<?php
// Basic
CroogoRouter::connect('/', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'promoted'
));

CroogoRouter::connect('/promoted/*', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'promoted'
));

CroogoRouter::connect('/search/*', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'search'
));

// Content types
CroogoRouter::contentType('blog');
CroogoRouter::contentType('node');
if (Configure::read('Install.installed')) {
	CroogoRouter::routableContentTypes();
}

// Page
CroogoRouter::connect('/about', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'view',
	'type' => 'page', 'slug' => 'about'
));

include_once ROOT . DS . APP_DIR . DS . 'Plugin' . DS . 'Service' . DS . 'Config' . DS . 'routes.php';
include_once ROOT . DS . APP_DIR . DS . 'Plugin' . DS . 'Settings' . DS . 'Config' . DS . 'routes.php';
include_once ROOT . DS . APP_DIR . DS . 'Plugin' . DS . 'Products' . DS . 'Config' . DS . 'routes.php';
include_once ROOT . DS . APP_DIR . DS . 'Plugin' . DS . 'News' . DS . 'Config' . DS . 'routes.php';
include_once ROOT . DS . APP_DIR . DS . 'Plugin' . DS . 'Contacts' . DS . 'Config' . DS . 'routes.php';

CroogoRouter::connect('/:slug.html', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'view',
	'type' => 'page'
));