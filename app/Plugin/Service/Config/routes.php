<?php
Router::connect(
        '/dich-vu/:slug-:id.html',
        array('plugin'=>'service','controller' => 'service', 'action' => 'view'),
        array('id' => '[0-9]+','slug' => '[a-zA-Z\-_0-9]+')
);

Router::connect('/dich-vu.html', array('plugin'=>'service','controller' => 'service', 'action' => 'index'));
Router::connect('/dich-vu/', array('plugin'=>'service','controller' => 'service', 'action' => 'index'));
Router::connect('/dich-vu/*', array('plugin'=>'service','controller' => 'service', 'action' => 'index'));
Router::connect('/dich-vu', array('plugin'=>'service','controller' => 'service', 'action' => 'index'));
