<?php

App::uses('FileManagerAppController', 'FileManager.Controller');

class AttachmentsController extends FileManagerAppController {

    /**
     * Controller name
     *
     * @var string
     * @access public
     */
    public $name = 'Attachments';

    /**
     * Models used by the Controller
     *
     * @var array
     * @access public
     */
    public $uses = array('Nodes.Node');

    /**
     * Helpers used by the Controller
     *
     * @var array
     * @access public
     */
    public $helpers = array('FileManager.FileManager', 'Text', 'Image');

    /**
     * Node type
     *
     * If the Controller uses Node model,
     * this is, most of the time, the singular of the Controller name in lowercase.
     *
     * @var string
     * @access public
     */
    public $type = 'attachment';

    /**
     * Uploads directory
     *
     * relative to the webroot.
     *
     * @var string
     * @access public
     */
    public $uploadsDir = 'uploads';

    /**
     * Before executing controller actions
     *
     * @return void
     * @access public
     */
    public function beforeFilter() {
        parent::beforeFilter();
        
        // Comment, Category, Tag not needed
        $this->Node->unbindModel(array('hasMany' => array('Comment'), 'hasAndBelongsToMany' => array('Category', 'Tag')));

        $this->Node->type = $this->type;
        $this->Node->Behaviors->attach('Tree', array('scope' => array('Node.type' => $this->type)));
        $this->set('type', $this->type);

        if ($this->action == 'admin_add') {
            $this->Security->csrfCheck = false;
            $this->Security->validatePost = false;   
        }
        
    }

    /**
     * Admin index
     *
     * @return void
     * @access public
     */
    public function admin_index() {
        $this->set('title_for_layout', __('Attachments'));

        $this->Node->recursive = 0;
        $this->paginate['Node']['order'] = 'Node.created DESC';
        $this->set('attachments', $this->paginate());
    }

    /**
     * Admin add
     *
     * @return void
     * @access public
     */
    public function admin_add() {
        
        $this->set('title_for_layout', __('Add Attachment'));
        if (isset($this->request->params['named']['editor'])) {
            $this->layout = 'admin_full';
        }
        
        if ($this->request->is('post') || !empty($this->request->data)) {
            
            // check if file with same path exists
            if(isset($this->request->params['form']['qqfile'])):
                $data = $this->request->params['form']['qqfile'];
                $file_name = $data['name'];
                $file_type = $data['type'];
                $file_tmp_name = $data['tmp_name'];
            endif;
            $destination = WWW_ROOT . $this->uploadsDir . DS . $file_name;
            if (file_exists($destination)) {
                $newFileName = String::uuid() . '-' . $file_name;
                $destination = WWW_ROOT . $this->uploadsDir . DS . $newFileName;
            } else {
                $newFileName = $file_name;
            }

            // remove the extension for title
            if (explode('.', $file_name) > 0) {
                $fileTitleE = explode('.', $file_name);
                array_pop($fileTitleE);
                $fileTitle = implode('.', $fileTitleE);
            } else {
                $fileTitle = $file_name;
            }
            
            $this->request->data['Node']['title'] = $fileTitle;
            $this->request->data['Node']['slug'] = $newFileName;
            $this->request->data['Node']['mime_type'] = $file_type;
            //$this->request->data['Node']['guid'] = Router::url('/' . $this->uploadsDir . '/' . $newFileName, true);
            $this->request->data['Node']['path'] = '/' . $this->uploadsDir . '/' . $newFileName;
            
            // move the file
            $moved = move_uploaded_file($file_tmp_name, $destination);
            
            $this->Node->create();
            if ($moved && $this->Node->save($this->request->data)) {
                 echo json_encode(array('success'=>true));exit;
            } else {
                echo json_encode(array('error'=>'The Uploader could not be saved. Please, try again.'));exit;
            }
        }
    }

    /**
     * Admin edit
     *
     * @param int $id
     * @return void
     * @access public
     */
    public function admin_edit($id = null) {
        $this->set('title_for_layout', __('Edit Attachment'));

        if (!$id && empty($this->request->data)) {
            $this->Session->setFlash(__('Invalid Attachment'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'browse'));
        }
        if (!empty($this->request->data)) {
            if ($this->Node->save($this->request->data)) {
                $this->Session->setFlash(__('The Attachment has been saved'), 'default', array('class' => 'success'));
                $this->redirect(array('action' => 'browse'));
            } else {
                $this->Session->setFlash(__('The Attachment could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
        if (empty($this->request->data)) {
            $this->request->data = $this->Node->read(null, $id);
        }
    }

    /**
     * Admin delete
     *
     * @param int $id
     * @return void
     * @access public
     */
    public function admin_delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for Attachment'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'browse'));
        }

        $attachment = $this->Node->find('first', array(
            'conditions' => array(
                'Node.id' => $id,
                'Node.type' => $this->type,
            ),
        ));
        if (isset($attachment['Node'])) {
            if ($this->Node->delete($id)) {
                unlink(WWW_ROOT . $this->uploadsDir . DS . $attachment['Node']['slug']);
                $this->Session->setFlash(__('Attachment deleted'), 'default', array('class' => 'success'));
                $this->redirect(array('action' => 'browse'));
            }
        } else {
            $this->Session->setFlash(__('Invalid id for Attachment'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'browse'));
        }
    }

    /**
     * Admin browse
     *
     * @return void
     * @access public
     */
    public function admin_browse() {
        if (!isset($this->request->query['type'])):
            if (isset($this->request->params['named']['type'])):
                unset($_SESSION['AttachImage']);
            endif;
        else:
            //Store Upload data
            (isset($this->request->query['domContain'])) ? $_SESSION['AttachImage']['domContain'] = $this->request->query['domContain'] : '';
            (isset($this->request->query['inputHidden'])) ? $_SESSION['AttachImage']['inputHidden'] = $this->request->query['inputHidden'] : '';

            (isset($this->request->query['listImage'])) ? $_SESSION['AttachImage']['listImage'] = $this->request->query['listImage'] : '';
        endif;

        $this->layout = 'admin_full';
        $this->admin_index();
    }

}
