<?php
Router::connect(
        '/san-pham/:slug-:id.html', 
        array('plugin'=>'products','controller' => 'products', 'action' => 'view'),
        array('id' => '[0-9]+','slug' => '[a-zA-Z\-_0-9]+')
);


Router::connect('/san-pham.html', array('plugin'=>'products','controller' => 'products', 'action' => 'index'));
Router::connect('/san-pham/', array('plugin'=>'products','controller' => 'products', 'action' => 'index'));
Router::connect('/san-pham/*', array('plugin'=>'products','controller' => 'products', 'action' => 'index'));
Router::connect('/san-pham', array('plugin'=>'products','controller' => 'products', 'action' => 'index'));