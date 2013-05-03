<?php

App::uses('NewsAppModel', 'News.Model');

class Newstb extends NewsAppModel {

    public $name = 'Newstb';

    public $_displayFields = array(
        'id',
        'images',
        'title',
        'created',
        'updated'
    );

    function getData($id = null) {
        
    }

}