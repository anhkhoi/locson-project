<?php
App::uses('ContactsAppController', 'Contacts.Controller');

/**
 * Contacts Controller
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class ContactsController extends ContactsAppController {

    /**
     * Controller name
     *
     * @var string
     * @access public
     */
    public $name = 'Contacts';

    /**
     * Components
     *
     * @var array
     * @access public
     */
    public $components = array(
        'Akismet',
        'Email',
        'Recaptcha',
    );

    /**
     * Models used by the Controller
     *
     * @var array
     * @access public
     */
    public $uses = array('Contacts.Contact', 'Contacts.Message');


    public function beforeFilter() {
        parent::beforeFilter();
    }

    /**
     * Admin index
     *
     * @return void
     * @access public
     */
    public function admin_index() {
        $this->set('title_for_layout', __('Contacts'));

        $this->Contact->recursive = 0;
        $this->paginate['Contact']['order'] = 'Contact.title ASC';
        $data = $this->paginate();
        sort($data);
        $data = array_reverse($data);
        $this->set('contacts', $data);
        $this->set('displayFields', $this->Contact->displayFields());
        
    }

    /**
     * Admin add
     *
     * @return void
     * @access public
     */
    public function admin_add() {
        $this->set('title_for_layout', __('Add Contact'));

        if (!empty($this->request->data)) {
            $this->Contact->create();
            if ($this->Contact->save($this->request->data)) {
                $this->Session->setFlash(__('The Contact has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Contact->id));
            } else {
                $this->Session->setFlash(__('The Contact could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
    }

    /**
     * Admin edit
     *
     * @param integer $id
     * @return void
     * @access public
     */
    public function admin_edit($id = null) {
        $this->set('title_for_layout', __('Edit Contact'));

        if (!$id && empty($this->request->data)) {
            $this->Session->setFlash(__('Invalid Contact'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->request->data)) {
            if ($this->Contact->save($this->request->data)) {
                $this->Session->setFlash(__('The Contact has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Contact->id));
            } else {
                $this->Session->setFlash(__('The Contact could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
        if (empty($this->request->data)) {
            $this->request->data = $this->Contact->read(null, $id);
        }
    }

    /**
     * Admin delete
     *
     * @param integer $id
     * @return void
     * @access public
     */
    public function admin_delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for Contact'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Contact->delete($id)) {
            $this->Session->setFlash(__('Contact deleted'), 'default', array('class' => 'success'));
            $this->redirect(array('action' => 'index'));
        }
    }

    public function captcha() {
        $code = rand(1000, 9999);
        $_SESSION["captcha_code"] = $code;
        $im = imagecreatetruecolor(50, 24);
        $bg = imagecolorallocate($im, 22, 86, 165); //background color blue
        $fg = imagecolorallocate($im, 255, 255, 255); //text color white
        imagefill($im, 0, 0, $bg);
        imagestring($im, 5, 5, 5, $code, $fg);
        header("Cache-Control: no-cache, must-revalidate");
        header('Content-type: image/png');
        imagepng($im);
        imagedestroy($im);
    }

    /**
     * View
     *
     * @param string $alias
     * @return void
     * @access public
     */
    public function view($alias = null) {
        if (!$alias) {
            $this->redirect('/');
        }

        $contact = $this->Contact->find('first', array(
            'conditions' => array(
                'Contact.alias' => $alias,
                'Contact.status' => 1,
            ),
            'cache' => array(
                'name' => 'contact_' . $alias,
                'config' => 'contacts_view',
            ),
        ));
        if (!isset($contact['Contact']['id'])) {
            $this->redirect('/');
        }
        $this->set('contact', $contact);

        $continue = true;
        if (!$contact['Contact']['message_status']) {
            $continue = false;
        }

        if (!empty($this->request->data) && $continue === true) {
            $this->request->data['Message']['contact_id'] = $contact['Contact']['id'];
            $this->request->data['Message']['title'] = htmlspecialchars($this->request->data['Message']['title']);
            $this->request->data['Message']['name'] = htmlspecialchars($this->request->data['Message']['name']);
            $this->request->data['Message']['body'] = htmlspecialchars($this->request->data['Message']['body']);
            
            $_SESSION['captcha_input'] = trim($this->request->data['Message']['captcha']);
            
            $continue = $this->_validation($continue, $contact);
            
            // $continue = $this->_send_email($continue, $contact);

            $emailConfig = Configure::read('EmailConfig');
            
            if (!empty($emailConfig)) {

                $addressTo      = Configure::read('Site.email');
                $addressFrom    = $this->request->data['Message']['email'];
                $content        = $this->request->data['Message']['body'];
                $Subject        = $this->request->data['Message']['title'];

                $config = array(
                    'sendMailType' => 'Default',
                    'webmail' => array(
                        'host' => $emailConfig['host'],
                        'username' => $emailConfig['username'],
                        'password' => $emailConfig['password'],
                        'address' => $emailConfig['address']
                    )
                );

                $continue = $this->_send($addressFrom, $addressTo, $content, $Subject, $config);
            }
            
            //Contact
            $this->Message->save($this->request->data['Message']);

            if ($continue === true) {
                //$this->Session->setFlash(__('Your message has been received.'));
                //unset($this->request->data['Message']);

                echo $this->flash(__('Liên hệ của bạn đã được gửi'), '/');

            } else {
                echo $this->flash(__('Liên hệ của bạn gửi không thành công, vui lòng thử lại sau'), '/');                
            }
        }

        $this->set('title_for_layout', __("Liên hệ"));
        $this->set(compact('continue'));
    }

    /**
     * Validation
     *
     * @param boolean $continue
     * @param array $contact
     * @return boolean
     * @access protected
     */
    protected function _validation($continue, $contact) {
        if ($this->Contact->Message->set($this->request->data) && $this->Contact->Message->validates() && $continue === true) {
            if ($contact['Contact']['message_archive'] && !$this->Contact->Message->save($this->request->data['Message'])) {
                $continue = false;
            }
        } else {
            $continue = false;
        }

        return $continue;
    }

    /**
     * Spam protection
     *
     * @param boolean $continue
     * @param array $contact
     * @return boolean
     * @access protected
     */
    protected function _spam_protection($continue, $contact) {
        if (!empty($this->request->data) &&
                $contact['Contact']['message_spam_protection'] &&
                $continue === true) {
            $this->Akismet->setCommentAuthor($this->request->data['Message']['name']);
            $this->Akismet->setCommentAuthorEmail($this->request->data['Message']['email']);
            $this->Akismet->setCommentContent($this->request->data['Message']['body']);
            if ($this->Akismet->isCommentSpam()) {
                $continue = false;
                $this->Session->setFlash(__('Sorry, the message appears to be spam.'), 'default', array('class' => 'error'));
            }
        }

        return $continue;
    }

    /**
     * Captcha
     *
     * @param boolean $continue
     * @param array $contact
     * @return boolean
     * @access protected
     */
    protected function _captcha($continue, $contact) {
        if (!empty($this->request->data) &&
                $contact['Contact']['message_captcha'] &&
                $continue === true &&
                !$this->Recaptcha->valid($this->request)) {
            $continue = false;
            $this->Session->setFlash(__('Invalid captcha entry'), 'default', array('class' => 'error'));
        }

        return $continue;
    }

    /**
     * Send Email
     *
     * @param boolean $continue
     * @param array $contact
     * @return boolean
     * @access protected
     */
    protected function _send_email($continue, $contact) {
        //echo 'dlfdlfkdf';
        $email = new CakeEmail();

        //echo 'vooooooo';
        //exit;
        if ($contact['Contact']['message_notify'] && $continue === true) {
            $siteTitle = Configure::read('Site.title');
            $email->from($this->request->data['Message']['email'])
                    ->to($contact['Contact']['email'])
                    ->subject(__('[%s] %s', $siteTitle, $contact['Contact']['title']))
                    ->template('Contacts.contact')
                    ->viewVars(array(
                        'contact' => $contact,
                        'message' => $this->request->data,
            ));

            if (!$email->send()) {
                $continue = false;
            }
        }

        return $continue;
    }

    /**
    * Send mail using PHP Mailer
    */
    protected function _send($addressFrom, $addressTo, $content, $Subject = null, $config = array()) {
        //vendor('phpmailer'.DS.'class.phpmailer');
        App::import('Vendor', 'PHPMailer', array('file'=>'PHPMailer'.DS.'class.phpmailer.php'));

        $sendMailType = $config['sendMailType'];

        // Using gmail
        // $gmailUsername = $config['gmail']['username'];
        // $gmailPassword = $config['gmail']['password'];

        // Using webmail
        $webmailHost = $config['webmail']['host'];
        $webmailUsername = $config['webmail']['username'];
        $webmailPassword = $config['webmail']['password'];
        $webmailAddress = $config['webmail']['address'];

        $flag = true;
        $mailer = new PHPMailer();

        $mailer->IsSMTP();
        $mailer->SMTPAuth = true;
        $mailer->CharSet = 'utf-8';
        //$mail->SMTPDebug  = 2;

        if ($sendMailType == 'Default') {
            $mailer->Host = $webmailHost;
            $mailer->Port = 25;
            $mailer->Username = $webmailUsername;
            $mailer->Password = $webmailPassword;
            $mailer->SetFrom($addressFrom, '');
        } else { //Gmail
            $mailer->SMTPSecure = 'ssl';
            $mailer->Host = 'smtp.gmail.com';
            $mailer->Port = 465;
            $mailer->Username = $gmailUsername;
            $mailer->Password = $gmailPassword;
            $mailer->SetFrom($gmailUsername, '');
        }

        $mailer->AddAddress($addressTo); // to

        if ($Subject == null) {
            $mailer->Subject = 'Loc Son Information';
        } else {
            $mailer->Subject = $Subject;
        }

        $mailer->IsHTML(true);

        if ($content != '') {
            $body = $content;
        } else {
            $body = "";
        }
        //HTML
        $mailer->Body = $body;

        if (!$mailer->Send()) {
            $flag = false;
        } else {
            $flag = true;
        }
        return $flag;

    }

}
