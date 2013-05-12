<?php
Router::connect('/khach-hang.html', array('plugin'=>'customer','controller' => 'customer', 'action' => 'index'));
Router::connect('/khach-hang/', array('plugin'=>'customer','controller' => 'customer', 'action' => 'index'));
Router::connect('/khac-hang/*', array('plugin'=>'customer','controller' => 'customer', 'action' => 'index'));
Router::connect('/khac-hang', array('plugin'=>'customer','controller' => 'customer', 'action' => 'index'));
