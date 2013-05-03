<?php
Router::connect(
        '/tin-tuc/:slug-:id.html', 
        array('plugin'=>'news','controller' => 'news', 'action' => 'view'),
        array('id' => '[0-9]+','slug' => '[a-zA-Z\-_0-9]+')
);

Router::connect('/tin-tuc.html', array('plugin'=>'news','controller' => 'news', 'action' => 'index'));
Router::connect('/tin-tuc/', array('plugin'=>'news','controller' => 'news', 'action' => 'index'));
Router::connect('/tin-tuc/*', array('plugin'=>'news','controller' => 'news', 'action' => 'index'));
Router::connect('/tin-tuc', array('plugin'=>'news','controller' => 'news', 'action' => 'index'));