<?php
CroogoNav::add('content.children.products', array(
    'title' => __('Products'),
    'url' => array(
        'admin' => true,
        'plugin' => 'products',
        'controller' => 'products',
        'action' => 'index'
    )
));