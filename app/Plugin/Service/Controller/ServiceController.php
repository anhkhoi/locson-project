<?php

class ServiceController extends ServiceAppController {

    public $name = 'Service'; //Controller name
    //public $components = array(); //Component name
    public $uses = array('Nodes.Node', 'Service.Service');
    public $paginate = array(
        'Service' => array(
            'limit' => 10
        )
    );

    public function __construct($request = null, $response = null) {
        parent::__construct($request, $response);
//        echo '<pre>';
//        print_r($this->request);
//        echo '</pre>';
    }

    public function admin_link() {
        $this->set('dataNode', $this->paginate('Node', array('Node.status' => 1)));
        $this->layout = 'ajax';
    }

    public function index() {
        $this->set('title_for_layout', __("Dịch vụ"));
        $nodeList = $this->paginate('Service',array('Service.parent > ' => 0));
        $this->set('nodeList',$nodeList);
    }

    public function view() {
        if (isset($this->request->params['id']) && $this->request->params['id'] !== ''):
            $id = (int) $this->request->params['id'];
            $data = $this->paginate('Service', array('id' => $id));
            $this->set('title_for_layout', ($data[0]['Service']['title'] !== '') ? __($data[0]['Service']['title']) . ' | ' . __('Dịch vụ') : '' . __('Dịch vụ'));
            $this->set('arrData', @$data[0]);
        endif;
    }

    public function admin_index() {
        $this->set('title_for_layout', __("Services"));
        //$this->Service->recursive = 0;
        $this->paginate['Service']['order'] = 'Service.title ASC';
        $data = $this->paginate('Service');

        $data = Set::sort($data, '{n}.Service.updated', 'desc');
        foreach ($data as $keys => $vals):
            $dateTime = new DateTime($vals[$this->name]['updated']);
            $data[$keys][$this->name]['updated'] = $dateTime->format('H:i || d-m-Y');

            $dateTime = new DateTime($vals[$this->name]['created']);
            $data[$keys][$this->name]['created'] = $dateTime->format('H:i || d-m-Y');

            $view = new View($this);
            if ($vals[$this->name]['images'] == ''):
                $img = $view->loadHelper('Html')->image('/img/croogo.png', array('alt' => 'empty img', 'style' => 'width: 80px;height: 60px;border-radius: 5px'));
            else:
                $img = $view->loadHelper('Html')->image($vals[$this->name]['images'], array('alt' => $vals[$this->name]['images'], 'style' => 'width: 80px;height: 60px;border-radius: 5px'));
            endif;
            $data[$keys][$this->name]['images'] = $img;

        endforeach;

        $this->set('service', $data);
        $this->set('displayFields', $this->Service->displayFields());
    }

    public function admin_add() {
        $this->set('title_for_layout', __('Add Service'));
        if (!empty($this->request->data)) {
            $this->Service->create();
            $this->request->data['Service']['slug'] = $this->slug($this->request->data['Service']['title']);
            if ($this->Service->save($this->request->data)) {
                $this->request->data['Service']['path'] = '/dich-vu/' . $this->request->data['Service']['slug'] . '-' . $this->Service->id . '.html';
                $this->Service->updateAll(
                        array('Service.path' => "'" . $this->request->data['Service']['path'] . "'"), array('Service.id =' => $this->Service->id)
                );
                $this->Session->setFlash(__('The Service has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Service->id));
            } else {
                $this->Session->setFlash(__('The Service could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
    }

    public function admin_edit($id = null) {
        $this->set('title_for_layout', __('Edit Service'));

        if (!$id && empty($this->request->data)) {
            $this->Session->setFlash(__('Invalid Service'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->request->data)) {
            $this->request->data['Service']['slug'] = $this->slug($this->request->data['Service']['title']);
            $this->request->data['Service']['path'] = '/dich-vu/' . $this->request->data['Service']['slug'] . '-' . $this->request->data['Service']['id'] . '.html';
            if ($this->Service->save($this->request->data)) {
                $this->Session->setFlash(__('The Service has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Service->id));
            } else {
                $this->Session->setFlash(__('The Service could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
        if (empty($this->request->data)) {
            $this->request->data = $this->Service->read(null, $id);
        }
    }

    public function admin_delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for Service'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Service->delete($id)) {

            $this->Session->setFlash(__('Service deleted'), 'default', array('class' => 'success'));
            $this->redirect(array('action' => 'index'));
        }
    }

    function slug($string) {

        //DUNG SAN
        $arrayTVietDungSan = array('à', 'á', 'ạ', 'ả', 'ã', 'â', 'ầ', 'ấ', 'ậ', 'ẩ', 'ẫ', 'ă',
            'ằ', 'ắ', 'ặ', 'ẳ', 'ẵ', 'è', 'é', 'ẹ', 'ẻ', 'ẽ', 'ê', 'ề'
            , 'ế', 'ệ', 'ể', 'ễ',
            'ì', 'í', 'ị', 'ỉ', 'ĩ',
            'ò', 'ó', 'ọ', 'ỏ', 'õ', 'ô', 'ồ', 'ố', 'ộ', 'ổ', 'ỗ', 'ơ'
            , 'ờ', 'ớ', 'ợ', 'ở', 'ỡ',
            'ù', 'ú', 'ụ', 'ủ', 'ũ', 'ư', 'ừ', 'ứ', 'ự', 'ử', 'ữ',
            'ỳ', 'ý', 'ỵ', 'ỷ', 'ỹ',
            'đ',
            'À', 'Á', 'Ạ', 'Ả', 'Ã', 'Â', 'Ầ', 'Ấ', 'Ậ', 'Ẩ', 'Ẫ', 'Ă'
            , 'Ằ', 'Ắ', 'Ặ', 'Ẳ', 'Ẵ',
            'È', 'É', 'Ẹ', 'Ẻ', 'Ẽ', 'Ê', 'Ề', 'Ế', 'Ệ', 'Ể', 'Ễ',
            'Ì', 'Í', 'Ị', 'Ỉ', 'Ĩ',
            'Ò', 'Ó', 'Ọ', 'Ỏ', 'Õ', 'Ô', 'Ồ', 'Ố', 'Ộ', 'Ổ', 'Ỗ', 'Ơ'
            , 'Ờ', 'Ớ', 'Ợ', 'Ở', 'Ỡ',
            'Ù', 'Ú', 'Ụ', 'Ủ', 'Ũ', 'Ư', 'Ừ', 'Ứ', 'Ự', 'Ử', 'Ữ',
            'Ỳ', 'Ý', 'Ỵ', 'Ỷ', 'Ỹ',
            'Đ');

        //TO HOP
        $arrayTVietToHop = array('à', 'á', 'ạ', 'ả', 'ã', 'â', 'ầ', 'ấ', 'ậ', 'ẩ', 'ẫ', 'ă',
            'ằ', 'ắ', 'ặ', 'ẳ', 'ẵ', 'è', 'é', 'ẹ', 'ẻ', 'ẽ', 'ê', 'ề'
            , 'ế', 'ệ', 'ể', 'ễ',
            'ì', 'í', 'ị', 'ỉ', 'ĩ',
            'ò', 'ó', 'ọ', 'ỏ', 'õ', 'ô', 'ồ', 'ố', 'ộ', 'ổ', 'ỗ', 'ơ'
            , 'ờ', 'ớ', 'ợ', 'ở', 'ỡ',
            'ù', 'ú', 'ụ', 'ủ', 'ũ', 'ư', 'ừ', 'ứ', 'ự', 'ử', 'ữ',
            'ỳ', 'ý', 'ỵ', 'ỷ', 'ỹ',
            'đ',
            'À', 'Á', 'Ạ', 'Ả', 'Ã', 'Â', 'Ầ', 'Ấ', 'Ậ', 'Ẩ', 'Ẫ', 'Ă'
            , 'Ằ', 'Ắ', 'Ặ', 'Ẳ', 'Ẵ',
            'È', 'É', 'Ẹ', 'Ẻ', 'Ẽ', 'Ê', 'Ề', 'Ế', 'Ệ', 'Ể', 'Ễ',
            'Ì', 'Í', 'Ị', 'Ỉ', 'Ĩ',
            'Ò', 'Ó', 'Ọ', 'Ỏ', 'Õ', 'Ô', 'Ồ', 'Ố', 'Ộ', 'Ổ', 'Ỗ', 'Ơ'
            , 'Ờ', 'Ớ', 'Ợ', 'Ở', 'Ỡ',
            'Ù', 'Ú', 'Ụ', 'Ủ', 'Ũ', 'Ư', 'Ừ', 'Ứ', 'Ự', 'Ử', 'Ữ',
            'Ỳ', 'Ý', 'Ỵ', 'Ỷ', 'Ỹ',
            'Đ');

        $arrayKoDau = array('a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'
            , 'a', 'a', 'a', 'a', 'a', 'a',
            'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e',
            'i', 'i', 'i', 'i', 'i',
            'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o', 'o'
            , 'o', 'o', 'o', 'o', 'o',
            'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u', 'u',
            'y', 'y', 'y', 'y', 'y',
            'd',
            'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'
            , 'A', 'A', 'A', 'A', 'A',
            'E', 'E', 'E', 'E', 'E', 'E', 'E', 'E', 'E', 'E', 'E',
            'I', 'I', 'I', 'I', 'I',
            'O', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'O'
            , 'O', 'O', 'O', 'O', 'O',
            'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U',
            'Y', 'Y', 'Y', 'Y', 'Y',
            'D');
        $newStr = str_replace($arrayTVietDungSan, $arrayKoDau, $string);
        $newStr = str_replace($arrayTVietToHop, $arrayKoDau, $newStr);
        $arrReplace = array('!', '@', '#', '$', '^', '&', '*', '(', ')', '_', '+', ',', '.', '\\', '/', '"', '?', ':');
        $newStr = str_replace($arrReplace, '', $newStr);
        $newStr = str_replace(' ', '-', $newStr);
        $newStr = trim($newStr);
        $newStr = strip_tags($newStr);
        $newStr = mb_strtolower($newStr, 'UTF-8');
        return $newStr;
    }

}