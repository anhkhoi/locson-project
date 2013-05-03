<?php

App::uses('ServiceAppModel', 'Service.Model');

class Service extends ServiceAppModel {

    public $name = 'Service';
    public $actsAs = array(
        'Cached' => array(
            'prefix' => array(
                'service_',
            ),
        ),
    );
    public $_displayFields = array(
        'id',
        'images',
        'title',
        'created',
        'updated'
    );

    function getData($id = null) {
        $options = array(
            'conditions' => array('Service.status' => 1,'Service.parent > ' => 0),
            'fields' => array('Service.id', 'Service.path', 'Service.parent', 'Service.title', 'Service.excerpt', 'Service.updated', 'Service.images', 'Service.description')
        );
        $data = $this->find('all', $options);
        return $data;
    }

}