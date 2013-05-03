<?php

App::uses('ProductsAppModel', 'Products.Model');

class Product extends ProductsAppModel {

    public $name = 'Product';

    public $_displayFields = array(
        'id',
        'images',
        'title',
        'created',
        'updated'
    );

}