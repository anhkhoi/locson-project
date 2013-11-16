<?php
CroogoNav::add('content.children.service', array(
    'title' => __('Services'),
    'url' => array(
        'admin' => true,
        'plugin' => 'service',
        'controller' => 'service',
        'action' => 'admin_index'
    )
));