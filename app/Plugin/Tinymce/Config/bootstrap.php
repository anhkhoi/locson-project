<?php

/**
 * Configuration
 */
Configure::write('Tinymce.actions', array(
    'Nodes/admin_add' => array(
        array(
            'elements' => 'NodeBody',
        ),
    ),
    'Nodes/admin_edit' => array(
        array(
            'elements' => 'NodeBody',
        ),
    ),
    'Translate/admin_edit' => array(
        array(
            'elements' => 'NodeBody',
        ),
    ),
    'Service/admin_edit' => array(
        array(
            'elements' => 'ServiceDescription',
        ),
    ),
    'Service/admin_add' => array(
        array(
            'elements' => 'ServiceDescription',
        ),
    ),
    'News/admin_edit' => array(
        array(
            'elements' => 'NewstbDescription',
        ),
    ),
    'News/admin_add' => array(
        array(
            'elements' => 'NewstbDescription',
        ),
    ),
    'Products/admin_edit' => array(
        array(
            'elements' => 'ProductDescription',
        ),
    ),
    'Products/admin_add' => array(
        array(
            'elements' => 'ProductDescription',
        ),
    ),
    'Translate/admin_edit' => array(
        array(
            'elements' => 'ServiceDescription'
        ),
        array(
            'elements' => 'ProductDescription'
        ),
        array(
            'elements' => 'NewstbDescription'
        ),
        array(
            'elements' => 'CustomerDescription'
        ),
    ),
    'Customer/admin_add' => array(
        array(
            'elements' => 'CustomerDescription'
        )
    ),
    'Customer/admin_edit' => array(
        array(
            'elements' => 'CustomerDescription'
        )
    )
));

/**
 * Hook helper
 */
foreach (Configure::read('Tinymce.actions') as $action => $settings) {
    $actionE = explode('/', $action);
    Croogo::hookHelper($actionE['0'], 'Tinymce.Tinymce');
}
Croogo::hookHelper('Attachments', 'Tinymce.Tinymce');