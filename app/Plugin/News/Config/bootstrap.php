<?php
CroogoNav::add('content.children.news', array(
    'title' => __('News'),
    'url' => array(
        'admin' => true,
        'plugin' => 'news',
        'controller' => 'news',
        'action' => 'index'
    )
));