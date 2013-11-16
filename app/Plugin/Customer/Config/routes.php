<?php
Router::connect(
        '/khach-hang/:slug-:id.html', 
        array('plugin'=>'customer','controller' => 'customer', 'action' => 'view'),
        array('id' => '[0-9]+','slug' => '[a-zA-Z\-_0-9]+')
);
Router::connect('/khach-hang.html', array('plugin'=>'customer','controller' => 'customer', 'action' => 'index'));
Router::connect('/khach-hang/', array('plugin'=>'customer','controller' => 'customer', 'action' => 'index'));
Router::connect('/khac-hang/*', array('plugin'=>'customer','controller' => 'customer', 'action' => 'index'));
Router::connect('/khac-hang', array('plugin'=>'customer','controller' => 'customer', 'action' => 'index'));
