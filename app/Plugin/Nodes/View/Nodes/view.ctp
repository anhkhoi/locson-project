<?php

$_node = $node['Node'];

if (trim($_node['parent_id']) === ''):

    $this->Html->addCrumb(__($_node['title']), null);

    $html = '<h3 class="blk-tit">' . __($_node['title']) . '</h3>';
    $html .= '<div class="blk-contents">';
    $html .= '<div class="contents">';
    $html .= $_node['body'];
    $html .= '</div>';
    $html .= '</div>';
    echo $html;

else:
    $parentId = $_node['parent_id'];
    $obj = ClassRegistry::init('Node');
    $options = array(
        'fields' => array('Node.id', 'Node.title', 'Node.slug', 'Node.path'),
        'conditions' => array('Node.id' => $parentId)
    );

    $data = $obj->find('first', $options);
    $parentNode = $data['Node'];


    $this->Html->addCrumb(__($parentNode['title']), $parentNode['path']);
    $this->Html->addCrumb(__($_node['title']), null);

    $html = '<h3 class="blk-tit">' . __($_node['title']) . '</h3>';
    $html .= '<div class="blk-contents">';
    $html .= $_node['body'];
    $html .= '</div>';
    echo $html;

endif;
?>