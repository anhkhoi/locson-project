<?php

class SupportController extends SupportAppController {

    public $name = 'Support'; //Controller name
    //public $components = array(); //Component name
    public $uses = array('Nodes.Node', 'Support.Support');
    public $paginate = array(
        'Support' => array(
            'limit' => 10,
            'order' => 'id DESC'
        )
    );

    public function admin_index() {
        $this->set('title_for_layout', __("Support"));
        //$this->Support->recursive = 0;
        $this->paginate['Support']['order'] = 'Support.title ASC';
        $data = $this->paginate('Support');

        $this->set('support', $data);
        $this->set('displayFields', $this->Support->displayFields());
    }

    public function admin_add() {
        $this->set('title_for_layout', __('Add Support'));
        if (!empty($this->request->data)) {
            $this->Support->create();
            if ($this->Support->save($this->request->data)) {
                $this->Session->setFlash(__('The Support has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Support->id));
            } else {
                $this->Session->setFlash(__('The Support could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
    }

    public function admin_edit($id = null) {
        $this->set('title_for_layout', __('Edit Support'));

        if (!$id && empty($this->request->data)) {
            $this->Session->setFlash(__('Invalid Support'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->request->data)) {
            if ($this->Support->save($this->request->data)) {
                $this->Session->setFlash(__('The Support has been saved'), 'default', array('class' => 'success'));
                $this->Croogo->redirect(array('action' => 'edit', $this->Support->id));
            } else {
                $this->Session->setFlash(__('The Support could not be saved. Please, try again.'), 'default', array('class' => 'error'));
            }
        }
        if (empty($this->request->data)) {
            $this->request->data = $this->Support->read(null, $id);
        }
    }

    public function admin_delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for Support'), 'default', array('class' => 'error'));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Support->delete($id)) {

            $this->Session->setFlash(__('Support deleted'), 'default', array('class' => 'success'));
            $this->redirect(array('action' => 'index'));
        }
    }

}