<?php

//Add Menu
CroogoNav::add('blocks.children.demo', array(
    'title' => __('Demo'),
    'url' => array(
        'admin' => true,
        'plugin' => 'demo',
        'controller' => 'demo',
        'action' => 'admin_index'
    ),
    'children' => array(
        'children1' => array(
            'title' => __('Children 1'),
            'url' => '#',
        )
    )
));