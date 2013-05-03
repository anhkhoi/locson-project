<?php

App::uses('SupportAppModel', 'Support.Model');

class Support extends SupportAppModel {

    public $name = 'Support';
    
    public $_displayFields = array(
        'id',
        'title',
        'email',
        'phone',
        'yahoo',
        'skype'
    );

}