<?php
CroogoNav::add('content.children.support', array(
    'title' => __('Support'),
    'url' => array(
        'admin' => true,
        'plugin' => 'support',
        'controller' => 'support',
        'action' => 'admin_index'
    )
));