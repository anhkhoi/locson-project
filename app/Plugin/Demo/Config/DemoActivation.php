<?php

class DemoActivation {

    public function beforeActivation(&$controller) {
        return true;
    }

    public function onActivation(&$controller) {
        // ACL: set ACOs with permissions (thiet lap permission cho controller)
        //$controller->Croogo->addAco('Example/Example/admin_index'); // ExampleController::admin_index()
        //$controller->Croogo->addAco('Example/Example/index', array('registered', 'public')); // ExampleController::index()

        //$this->Link = ClassRegistry::init('Menus.Link');

        // Main menu: add an Example link
//        $mainMenu = $this->Link->Menu->findByAlias('main');
//        $this->Link->Behaviors->attach('Tree', array(
//            'scope' => array(
//                'Link.menu_id' => $mainMenu['Menu']['id'],
//            ),
//        ));
//        $this->Link->save(array(
//            'menu_id' => $mainMenu['Menu']['id'],
//            'title' => 'Demo',
//            'link' => 'plugin:example/controller:example/action:index',
//            'status' => 1,
//            'class' => 'demo',
//        ));
        
    }

    public function beforeDeactivation(&$controller) {
        return true;
    }

    public function onDeactivation(&$controller) {
        // ACL: remove ACOs with permissions
        //$controller->Croogo->removeAco('Example'); // ExampleController ACO and it's actions will be removed

        //$this->Link = ClassRegistry::init('Menus.Link');

        // Main menu: delete Example link
//        $link = $this->Link->find('first', array(
//            'joins' => array(
//                array(
//                    'table' => 'menus',
//                    'alias' => 'JoinMenu',
//                    'conditions' => array(
//                        'JoinMenu.alias' => 'main',
//                    ),
//                ),
//            ),
//            'conditions' => array(
//                'Link.link' => 'plugin:example/controller:example/action:index',
//            ),
//        ));
//        if (!$link) {
//            return;
//        }
//        $this->Link->Behaviors->attach('Tree', array(
//            'scope' => array(
//                'Link.menu_id' => $link['Link']['menu_id'],
//            ),
//        ));
//        if (isset($link['Link']['id'])) {
//            $this->Link->delete($link['Link']['id']);
//        }
        
    }

}