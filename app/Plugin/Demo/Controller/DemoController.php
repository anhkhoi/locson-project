<?php

class DemoController extends DemoAppController {

    

    public function admin_index() {
        $this->set('title_for_layout', __('Demo Page'));

        $this->Setting->recursive = 0;
        $this->paginate['Setting']['order'] = "Setting.weight ASC";
        if (isset($this->request->params['named']['p'])) {
            $this->paginate['Setting']['conditions'] = "Setting.key LIKE '" . $this->request->params['named']['p'] . "%'";
        }
        $this->paginate['limit'] = 100;
        
        $this->set('settings', $this->paginate());
    }

}