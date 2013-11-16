<?php

class NewsController extends NewsAppController {

    public $name = 'News'; //Controller name
    //public $components = array(); //Component name
    public $uses = array('Nodes.Node', 'News.Newstb');
    public $paginate = array(
        'Newstb' => array(
            'limit' => 15,
            'order' => 'Newstb.updated DESC'
        )
    );

    public function beforeFilter() {
        parent::beforeFilter();

        if ($this->request->params['action'] === 'admin_add' || $this->request->params['action'] === 'admin_edit'):
            $data = Set::extract('/Newstb/.', $this->Newstb->find('all', array('fields' => array('id', 'title', 'parent'))));
            $this->getRecursive($data, 0, 1, $results);
            $id = @$this->request->pass[0];
            $_tmp = Set::extract('/Newstb/.', $this->Newstb->find('all', array('conditions' => array('id' => $id), 'fields' => array('parent'))));
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

    public function admin_link() {
        $this->set('dataNode', $this->paginate('Node', array('Node.status' => 1)));
        $this->layout = 'ajax';
    }

    public function index() {
        $this->set('title_for_layout', __('Tin tức'));
        $nodeList = $this->paginate('Newstb', array('Newstb.parent > ' => 1));
        $this->set('nodeList', $nodeList);
    }

    public function view() {
        if (isset($this->request->params['id']) && $this->request->params['id'] !== ''):
            $tmp = $this->Newstb->findById($this->request->params['id'], array('parent','title'));
            $this->set('parentTitle',$tmp['Newstb']['title']);
            $this->set('parentId',$tmp['Newstb']['parent']);
            $id = (int) $this->request->params['id'];
            if ($tmp['Newstb']['parent'] == 1):
                $data = $this->paginate('Newstb', array('parent' => $id));
                $this->set('title_for_layout', __($tmp['Newstb']['title']) . ' | ' . __('Tin tức'));
                $this->set('arrData', $data);
            else:
                $data = $this->paginate('Newstb', array('id' => $id));
                $this->set('title_for_layout', ($data[0]['Newstb']['title'] !== '') ? __($data[0]['Newstb']['title']) . ' | ' . __('Tin tức') : '' . __('Tin tức'));
                $this->set('arrData', $data);
            endif;

        endif;
    }

    public function admin_index() {
        $this->set('title_for_layout', __("News"));
        $data = $this->paginate('Newstb');
        foreach ($data as $keys => $vals):
            $dateTime = new DateTime($vals['Newstb']['updated']);
            $data[$keys]['Newstb']['updated'] = $dateTime->format('H:i || d-m-Y');

            $dateTime = new DateTime($vals['Newstb']['created']);
            $data[$keys]['Newstb']['created'] = $dateTime->format('H:i || d-m-Y');

            $view = new View($this);
            if ($vals['Newstb']['images'] == ''):
                $img = $view->loadHelper('Html')->image('/img/croogo.png', array('alt' => 'empty img', 'style' => 'width: 80px;height: 60px;border-radius: 5px'));
            else:
                $img = $view->loadHelper('Html')->image($vals['Newstb']['images'], array('alt' => $vals['Newstb']['images'], 'style' => 'width: 80px;height: 60px;border-radius: 5px'));
            endif;
            $data[$keys]['Newstb']['images'] = $img;

        endforeach;

        $this->set('news', $data);
        $this->set('displayFields', $this->Newstb->displayFields());
    }

    public function admin_add() {
        $this->set('title_for_layout', __('Add News'));
        $this->set('categories', $this->categories());

        if (!empty($this->request->data)) {
            $this->Newstb->create();
            $this->request->data['Newstb']['slug'] = $this->slug($this->request->data['Newstb']['title']);
            if ($this->Newstb->save($this->request->data)) {
                $this->request->data['Newstb']['path'] = '/tin-tuc/' . $this->request->data['Newstb']['slug'] . '-' . $this->Newstb->id . '.html';
                $this->Newstb->updateAll(
                        array('Newstb.path' => "'" . $this->request->data['Newstb']['path'] . "'"), array('Newstb.id =' => $this->Newstb->id)
                );
                $this->Session->setFlash(__('The News has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Newstb->id));
            } else {
                $this->Session->setFlash(__('The News could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
    }

    public function admin_edit($id = null) {
        $this->set('title_for_layout', __('Edit News'));

        if (!$id && empty($this->request->data)) {
            $this->Session->setFlash(__('Invalid News'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->request->data)) {

            $this->request->data['Newstb']['slug'] = $this->slug($this->request->data['Newstb']['title']);
            $this->request->data['Newstb']['path'] = '/tin-tuc/' . $this->request->data['Newstb']['slug'] . '-' . $this->request->data['Newstb']['id'] . '.html';

            if ($this->Newstb->save($this->request->data)) {
                $this->Session->setFlash(__('The News has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Newstb->id));
            } else {
                $this->Session->setFlash(__('The News could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
        if (empty($this->request->data)) {
            $this->request->data = $this->Newstb->read(null, $id);
        }
    }

    public function admin_delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for News'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Newstb->delete($id)) {

            $this->Session->setFlash(__('News deleted'), 'default', array('class' => 'success'));
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
        $arrReplace = array('!', '@', '#', '$', '^', '&', '*', '(', ')', '_', '+', ',', '.', '\\', '/', '"', '?', ':', "'");
        $newStr = str_replace($arrReplace, '', $newStr);
        $newStr = str_replace(' ', '-', $newStr);
        $newStr = trim($newStr);
        $newStr = strip_tags($newStr);
        $newStr = mb_strtolower($newStr, 'UTF-8');
        return $newStr;
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

    public function categories($id = null) {
        $data = Set::extract('/Newstb/.', $this->Newstb->find('all', array('fields' => array('id', 'title', 'parent'))));
        $this->getRecursive($data, 0, 1, $results);
        $_tmp = Set::extract('/Newstb/.', $this->Newstb->find('all', array('conditions' => array('id' => $id), 'fields' => array('parent'))));
        $_parent = @$_tmp[0]['parent'];
        $options = '';
        $selected = '';
        //Edit
        if ($id != null):
            if ((int) $_parent == 1):
                $options .= '<option value="' . $results[0]['id'] . '">' . $results[0]['title'] . '</option>';
            else:
                foreach ($results as $keys => $vals):
                    if ($vals['level'] > 1):
                        $repeat = str_repeat('+', $vals['level']);
                    else:
                        $repeat = '';
                    endif;
                    if ($_parent === $vals['id']):
                        $options .= '<option selected="selected" value="' . $vals['id'] . '">' . $repeat . ' ' . $vals['title'] . '</option>';
                    else:
                        $options .= '<option value="' . $vals['id'] . '">' . $repeat . ' ' . $vals['title'] . '</option>';
                    endif;
                endforeach;
            endif;
        else:
            foreach ($results as $vals):
                if ($vals['level'] > 1):
                    $repeat = str_repeat('+', $vals['level']);
                else:
                    $repeat = '';
                endif;
                $options .= '<option value="' . $vals['id'] . '">' . $repeat . ' ' . $vals['title'] . '</option>';
            endforeach;
        endif;

        $html = '<div class="input select"><label for="NewstbParent"></label>';
        $html .= '<select name="data[Newstb][parent]" class="span10" id="NewstbParent">' . $options . '</select>';
        $html .= '</div>';
        return $html;
    }

}