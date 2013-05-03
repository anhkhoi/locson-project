<?php

class ProductsController extends ProductsAppController {

    public $name = 'Products'; //Controller name
    //public $components = array(); //Component name
    public $uses = array('Nodes.Node', 'Products.Product');
    public $paginate = array(
        'Product' => array(
            'limit' => 15,
            'order' => 'Product.updated DESC'
        )
    );

    public function beforeFilter() {
        parent::beforeFilter();

        if ($this->request->params['action'] === 'admin_add' || $this->request->params['action'] === 'admin_edit'):
            $data = Set::extract('/Product/.', $this->Product->find('all', array('fields' => array('id', 'title', 'parent'))));
            $this->getRecursive($data, 0, 1, $results);
            $id = @$this->request->pass[0];
            $_tmp = Set::extract('/Product/.', $this->Product->find('all', array('conditions' => array('id' => $id), 'fields' => array('parent'))));
            $_parent = (int) @$_tmp[0]['parent'];

            $arr = array();
            foreach ($results as $vals):
                if ($vals['level'] > 1):
                    $repeat = str_repeat('+ ', $vals['level']);
                else:
                    $repeat = '';
                endif;
                $arr[$vals['id']] = $repeat . $vals['title'];
            endforeach;
            $this->set('cateOptions', $arr);
        endif;
    }

    public function index() {
        $nodeList = $this->paginate('Product', array('Product.parent > ' => 1));
        $this->set('title_for_layout', __('Sản phẩm'));
        $this->set('nodeList', $nodeList);
    }

    public function view() {
        if (isset($this->request->params['id']) && $this->request->params['id'] !== ''):
            $tmp = $this->Product->findById($this->request->params['id'], array('parent', 'title'));
            $this->set('parentTitle', $tmp['Product']['title']);
            $this->set('parentId', $tmp['Product']['parent']);
            $id = (int) $this->request->params['id'];
            if ($tmp['Product']['parent'] == 1):
                $data = $this->paginate('Product', array('parent' => $id));
                $this->set('title_for_layout', __($tmp['Product']['title']) . ' | ' . __('Sản phẩm'));
                $this->set('arrData', $data);
            else:
                $data = $this->paginate('Product', array('id' => $id));
                $this->set('title_for_layout', ($data[0]['Product']['title'] !== '') ? __($data[0]['Product']['title']) . ' | ' . __('Sản phẩm') : '' . __('Sản phẩm'));

                $data[0]['Product']['imglistid'] = $this->listImage($data[0]['Product']['imglistid']);
                $this->set('arrData', $data);

                $this->set('randomProduct', $this->randomProduct());
            endif;

        endif;
    }

    public function randomProduct() {
        $arrData = $this->Product->find('all', array(
            'conditions' => array('status' => 1, 'parent > 1'),
            'fields' => array('id', 'title', 'path', 'images'),
            'order' => 'RAND()',
            'limit' => '8'
        ));
        return $arrData;
    }

    public function listImage($strId) {
        $tmpId = '';
        foreach (explode(',', $strId) as $vals):
            if ((int) $vals > 0):
                $tmpId .= ',' . $vals;
            endif;
        endforeach;
        $strId = substr($tmpId, 1);
        
        $html = '';
        if ($strId != ''):
            $arrData = $this->Node->find('all', array(
                'fields' => array('Node.id', 'Node.path'),
                'conditions' => array('Node.type' => 'attachment', 'Node.id IN (' . $strId . ')'),
                'order' => 'Node.id DESC'
            ));

            $arrData = Set::extract('/Node/.', $arrData);

            $html = '<ul>';
            foreach ($arrData as $vals):
                $html .= '<li><img src="' . $vals['path'] . '" alt="images"></li>';
            endforeach;
            $html .= '</ul>';
        endif;

        return $html;
    }

    public function admin_index() {

        $this->set('title_for_layout', __("Products"));

        $data = $this->paginate('Product');

        foreach ($data as $keys => $vals):
            $dateTime = new DateTime($vals['Product']['updated']);
            $data[$keys]['Product']['updated'] = $dateTime->format('H:i || d-m-Y');

            $dateTime = new DateTime($vals['Product']['created']);
            $data[$keys]['Product']['created'] = $dateTime->format('H:i || d-m-Y');

            $view = new View($this);
            if ($vals['Product']['images'] == ''):
                $img = $view->loadHelper('Html')->image('/img/croogo.png', array('alt' => 'empty img', 'style' => 'width: 80px;height: 60px;border-radius: 5px'));
            else:
                $img = $view->loadHelper('Html')->image($vals['Product']['images'], array('alt' => $vals['Product']['images'], 'style' => 'width: 80px;height: 60px;border-radius: 5px'));
            endif;
            $data[$keys]['Product']['images'] = $img;

        endforeach;

        $this->set('products', $data);
        $this->set('displayFields', $this->Product->displayFields());
    }

    public function admin_add() {
        $this->set('title_for_layout', __('Add Products'));

        if (!empty($this->request->data)) {
            $this->Product->create();
            $this->request->data['Product']['slug'] = $this->slug($this->request->data['Product']['title']);
            if ($this->Product->save($this->request->data)) {
                $this->request->data['Product']['path'] = '/san-pham/' . $this->request->data['Product']['slug'] . '-' . $this->Product->id . '.html';
                $this->Product->updateAll(
                        array('Product.path' => "'" . $this->request->data['Product']['path'] . "'"), array('Product.id =' => $this->Product->id)
                );
                $this->Session->setFlash(__('The Products has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Product->id));
            } else {
                $this->Session->setFlash(__('The Products could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
    }

    public function admin_edit($id = null) {
        $this->set('title_for_layout', __('Edit Products'));

        if (!$id && empty($this->request->data)) {
            $this->Session->setFlash(__('Invalid Products'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->request->data)) {

            $this->request->data['Product']['slug'] = $this->slug($this->request->data['Product']['title']);
            $this->request->data['Product']['path'] = '/san-pham/' . $this->request->data['Product']['slug'] . '-' . $this->request->data['Product']['id'] . '.html';

            if ($this->Product->save($this->request->data)) {
                $this->Session->setFlash(__('The Products has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Product->id));
            } else {
                $this->Session->setFlash(__('The Products could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
        if (empty($this->request->data)) {
            $this->request->data = $this->Product->read(null, $id);
        }
    }

    public function admin_delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for Products'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Product->delete($id)) {

            $this->Session->setFlash(__('Products deleted'), 'default', array('class' => 'success'));
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
        $Productstr = str_replace($arrayTVietDungSan, $arrayKoDau, $string);
        $Productstr = str_replace($arrayTVietToHop, $arrayKoDau, $Productstr);
        $arrReplace = array('!', '@', '#', '$', '^', '&', '*', '(', ')', '_', '+', ',', '.', '\\', '/', '"', '?', ':');
        $Productstr = str_replace($arrReplace, '', $Productstr);
        $Productstr = str_replace(' ', '-', $Productstr);
        $Productstr = trim($Productstr);
        $Productstr = strip_tags($Productstr);
        $Productstr = mb_strtolower($Productstr, 'UTF-8');
        return $Productstr;
    }

    function getRecursive($data, $parent = 0, $level = 1, &$result) {
        if (!empty($data)) {
            if ($level < 3) {
                foreach ($data as $key => $val) {
                    if (@$val['parent'] == $parent) {
                        $val['level'] = $level;
                        $result[] = $val;
                        $new_parent = $val['id'];
                        unset($data[$key]);
                        $this->getRecursive($data, $new_parent, $level + 1, $result);
                    }
                }
            }
        }
    }

}