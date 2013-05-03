<?php

// Contact
CroogoRouter::connect('/lien-he.html', array(
	'plugin' => 'contacts', 'controller' => 'contacts', 'action' => 'view', 'contact'
));
CroogoRouter::connect('/lien-he', array(
	'plugin' => 'contacts', 'controller' => 'contacts', 'action' => 'view', 'contact'
));
