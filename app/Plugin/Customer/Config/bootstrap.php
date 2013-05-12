<?php
CroogoNav::add('content.children.customer', array(
    'title' => __('Customer'),
    'url' => array(
        'admin' => true,
        'plugin' => 'customer',
        'controller' => 'customer',
        'action' => 'admin_index'
    )
));