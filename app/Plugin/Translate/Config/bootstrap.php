<?php

/**
 * Configuration
 *
 */
Configure::write('Translate.models', array(
    'Node' => array(
        'fields' => array(
            'title' => 'titleTranslation',
            'excerpt' => 'excerptTranslation',
            'body' => 'bodyTranslation',
        ),
        'translateModel' => 'Nodes.Node',
    ),
    'Block' => array(
        'fields' => array(
            'title' => 'titleTranslation',
            'body' => 'bodyTranslation',
        ),
        'translateModel' => 'Blocks.Block',
    ),
    'Link' => array(
        'fields' => array(
            'title' => 'titleTranslation',
            'description' => 'descriptionTranslation',
        ),
        'translateModel' => 'Menus.Link',
    ),
    'Service' => array(
        'fields' => array(
            'title' => 'titleTranslation',
            'excerpt' => 'excerptTranslation',
            'description' => 'descriptionTranslation'
        ),
        'translateModel' => 'Service.Service',
    ),
    'Support' => array(
        'fields' => array(
            'title' => 'titleTranslation',
        ),
        'translateModel' => 'Support.Support',
    ),
    'Product' => array(
        'fields' => array(
            'title' => 'titleTranslation',
            'excerpt' => 'excerptTranslation',
            'description' => 'descriptionTranslation',
        ),
        'translateModel' => 'Products.Product',
    ),
    'Newstb' => array(
        'fields' => array(
            'title' => 'titleTranslation',
            'excerpt' => 'excerptTranslation',
            'description' => 'descriptionTranslation',
        ),
        'translateModel' => 'News.Newstb',
    ),
));

/**
 * Do not edit below this line unless you know what you are doing.
 *
 */
foreach (Configure::read('Translate.models') as $translateModel => $config) {
    Croogo::hookBehavior($translateModel, 'Translate.CroogoTranslate', $config);
    Croogo::hookAdminRowAction(Inflector::pluralize($translateModel) . '/admin_index', 'Translate', 'plugin:translate/controller:translate/action:index/:id/' . $translateModel);
}
