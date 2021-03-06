<?php

App::uses('NodesAppController', 'Nodes.Controller');
App::uses('Croogo', 'Lib');

/**
 * Nodes Controller
 *
 * PHP version 5
 *
 * @category Nodes.Controller
 * @package  Croogo.Nodes
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class NodesController extends NodesAppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Nodes';

/**
 * Components
 *
 * @var array
 * @access public
 */
	public $components = array(
		'Recaptcha',
		'Search.Prg',
	);

/**
 * Preset Variable Search
 *
 * @var array
 * @access public
 */
	public $presetVars = array(
		'filter' => array('type' => 'value'),
		'type' => array('type' => 'value'),
		'status' => array('type' => 'value'),
		'promote' => array('type' => 'value'),
	);

/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Nodes.Node','Service.Service','News.Newstb','Products.Product','Customer.Customer');

        public $paginate = array(
            'Node' => array(
                'conditions' => array('status'=> 1),
                'order' => array('id desc'),
                'field' => array('id','title')
            ),
            'Service' => array(
                'conditions' => array('status' => 1),
                'order' => array('id desc'),
                'fields' => array('id','title','slug','parent')
                ),
            'Newstb' => array(
                'conditions' => array('status' => 1),
                'order' => array('id desc'),
                'fields' => array('id','title','slug','parent')
                ),
            'Product' => array(
                'conditions' => array('status' => 1),
                'order' => array('id desc'),
                'fields' => array('id','title','slug','parent')
                ),
             'Customer' => array(
                'conditions' => array('status' => 1),
                'order' => array('id desc'),
                'fields' => array('id','title','slug','parent')
                ),
        );
/**
 * afterConstruct
 */
	public function afterConstruct() {
		parent::afterConstruct();
		$this->_setupAclComponent();
	}

/**
 * beforeFilter
 *
 * @return void
 * @access public
 */
	public function beforeFilter() {
		parent::beforeFilter();

		if (isset($this->request->params['slug'])) {
			$this->request->params['named']['slug'] = $this->request->params['slug'];
		}
		if (isset($this->request->params['type'])) {
			$this->request->params['named']['type'] = $this->request->params['type'];
		}
		$this->Security->unlockedActions[] = 'admin_toggle';
	}

/**
 * Toggle Node status
 *
 * @param $id string Node id
 * @param $status integer Current Node status
 * @return void
 */
	public function admin_toggle($id = null, $status = null) {
		$this->Croogo->fieldToggle($this->Node, $id, $status);
	}

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('Content'));
		$this->Prg->commonProcess();

		$this->Node->recursive = 0;
		$this->paginate['Node']['order'] = 'Node.created DESC';
		$this->paginate['Node']['conditions'] = array();
		$this->paginate['Node']['contain'] = array('User');

		$types = $this->Node->Taxonomy->Vocabulary->Type->find('all');
		$typeAliases = Hash::extract($types, '{n}.Type.alias');
		$this->paginate['Node']['conditions']['Node.type'] = $typeAliases;
		$nodes = $this->paginate($this->Node->parseCriteria($this->passedArgs));
                
		$nodeTypes = $this->Node->Taxonomy->Vocabulary->Type->find('list', array(
			'fields' => array('Type.alias', 'Type.title')
			));
                
                $data = compact('nodes', 'types', 'typeAliases', 'nodeTypes');
                $data = Set::sort($data['nodes'],'{n}.Node.id', 'desc');

		$this->set('nodes',$data);
		$this->set('typeAliases',$typeAliases);
		$this->set('nodeTypes',$nodeTypes);
//		$this->set(compact('nodes', 'types', 'typeAliases', 'nodeTypes'));
                
                //Service Link
                $serviceData = $this->paginate('Service');
                $this->set('serviceData',$serviceData);
                
                //News Link
                $NewsData = $this->paginate('Newstb');
                $this->set('newsData',$NewsData);
                
                //Products Link
                $productData = $this->paginate('Product');
                $this->set('productData',$productData);
                
                //Customer Link
                $customerData = $this->paginate('Customer');
                $this->set('customerData',$customerData);
                
		if (isset($this->request->params['named']['links'])) {
			$this->layout = 'ajax';
			$this->render('admin_links');
		}
                
	}

/**
 * Admin create
 *
 * @return void
 * @access public
 */
	public function admin_create() {
		$this->set('title_for_layout', __('Create content'));

		$types = $this->Node->Taxonomy->Vocabulary->Type->find('all', array(
			'order' => array(
				'Type.alias' => 'ASC',
			),
		));
		$this->set(compact('types'));
	}

/**
 * Admin add
 *
 * @param string $typeAlias
 * @return void
 * @access public
 */
	public function admin_add($typeAlias = 'node') {
		$type = $this->Node->Taxonomy->Vocabulary->Type->findByAlias($typeAlias);
		if (!isset($type['Type']['alias'])) {
			$this->Session->setFlash(__('Content type does not exist.'));
			$this->redirect(array('action' => 'create'));
		}

		$this->set('title_for_layout', __('Create content: %s', $type['Type']['title']));
		$this->Node->type = $type['Type']['alias'];
		$this->Node->Behaviors->attach('Tree', array(
			'scope' => array(
				'Node.type' => $this->Node->type,
			),
		));

		if (!empty($this->request->data)) {
			if (isset($this->request->data['TaxonomyData'])) {
				$this->request->data['Taxonomy'] = array(
					'Taxonomy' => array(),
				);
				foreach ($this->request->data['TaxonomyData'] as $vocabularyId => $taxonomyIds) {
					if (is_array($taxonomyIds)) {
						$this->request->data['Taxonomy']['Taxonomy'] = array_merge($this->request->data['Taxonomy']['Taxonomy'], $taxonomyIds);
					}
				}
			}
			$this->Node->create();
			$this->request->data['Node']['path'] = Croogo::getRelativePath(array(
				'admin' => false,
				'controller' => 'nodes',
				'action' => 'view',
				'type' => $this->Node->type,
				'slug' => $this->request->data['Node']['slug'],
			));
			$this->request->data['Node']['visibility_roles'] = $this->Node->encodeData($this->request->data['Role']['Role']);
			if ($this->Node->saveWithMeta($this->request->data)) {
				Croogo::dispatchEvent('Controller.Nodes.afterAdd', $this, array('data' => $this->request->data));
				$this->Session->setFlash(__('%s has been saved', $type['Type']['title']), 'default', array('class' => 'success'));
				$this->Croogo->redirect(array('action' => 'edit', $this->Node->id));
			} else {
				$this->Session->setFlash(__('%s could not be saved. Please, try again.', $type['Type']['title']), 'default', array('class' => 'error'));
			}
		} else {
			$this->request->data['Node']['user_id'] = $this->Session->read('Auth.User.id');
		}

		$nodes = $this->Node->generateTreeList();
		$roles = $this->Node->User->Role->find('list');
		$users = $this->Node->User->find('list');
		$vocabularies = Hash::combine($type['Vocabulary'], '{n}.id', '{n}');
		$taxonomy = array();
		foreach ($type['Vocabulary'] as $vocabulary) {
			$vocabularyId = $vocabulary['id'];
			$taxonomy[$vocabularyId] = $this->Node->Taxonomy->getTree($vocabulary['alias'], array('taxonomyId' => true));
		}
		$this->set(compact('typeAlias', 'type', 'nodes', 'roles', 'vocabularies', 'taxonomy', 'users'));
	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid content'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}

		$this->Node->id = $id;
		$typeAlias = $this->Node->field('type');

		$type = $this->Node->Taxonomy->Vocabulary->Type->findByAlias($typeAlias);
		if (!isset($type['Type']['alias'])) {
			$this->Session->setFlash(__('Content type does not exist.'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'create'));
		}

		$this->Node->type = $type['Type']['alias'];
		$this->Node->Behaviors->attach('Tree', array('scope' => array('Node.type' => $this->Node->type)));

		if (!empty($this->request->data)) {
			if (isset($this->request->data['TaxonomyData'])) {
				$this->request->data['Taxonomy'] = array(
					'Taxonomy' => array(),
				);
				foreach ($this->request->data['TaxonomyData'] as $vocabularyId => $taxonomyIds) {
					if (is_array($taxonomyIds)) {
						$this->request->data['Taxonomy']['Taxonomy'] = array_merge($this->request->data['Taxonomy']['Taxonomy'], $taxonomyIds);
					}
				}
			}
			$this->request->data['Node']['path'] = Croogo::getRelativePath(array(
				'admin' => false,
				'controller' => 'nodes',
				'action' => 'view',
				'type' => $this->Node->type,
				'slug' => $this->request->data['Node']['slug'],
			));
			$this->request->data['Node']['visibility_roles'] = $this->Node->encodeData($this->request->data['Role']['Role']);
			if ($this->Node->saveWithMeta($this->request->data)) {
				Croogo::dispatchEvent('Controller.Nodes.afterEdit', $this, array('data' => $this->request->data));
				$this->Session->setFlash(__('%s has been saved', $type['Type']['title']), 'default', array('class' => 'success'));
				$this->Croogo->redirect(array('action' => 'edit', $this->Node->id));
			} else {
				$this->Session->setFlash(__('%s could not be saved. Please, try again.', $type['Type']['title']), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$data = $this->Node->read(null, $id);
			$data['Role']['Role'] = $this->Node->decodeData($data['Node']['visibility_roles']);
			$this->request->data = $data;
		}

		$this->set('title_for_layout', __('Edit %s: %s', $type['Type']['title'], $this->request->data['Node']['title']));

		$nodes = $this->Node->generateTreeList();
		$roles = $this->Node->User->Role->find('list');
		$users = $this->Node->User->find('list');
		$vocabularies = Hash::combine($type['Vocabulary'], '{n}.id', '{n}');
		$taxonomy = array();
		foreach ($type['Vocabulary'] as $vocabulary) {
			$vocabularyId = $vocabulary['id'];
			$taxonomy[$vocabularyId] = $this->Node->Taxonomy->getTree($vocabulary['alias'], array('taxonomyId' => true));
		}
		$this->set(compact('typeAlias', 'type', 'nodes', 'roles', 'vocabularies', 'taxonomy', 'users'));
	}

/**
 * Admin update paths
 *
 * @return void
 * @access public
 */
	public function admin_update_paths() {
		$types = $this->Node->Taxonomy->Vocabulary->Type->find('list', array(
			'fields' => array(
				'Type.id',
				'Type.alias',
			),
		));
		$typesAlias = array_values($types);

		$nodes = $this->Node->find('all', array(
			'conditions' => array(
				'Node.type' => $typesAlias,
			),
			'fields' => array(
				'Node.id',
				'Node.slug',
				'Node.type',
				'Node.path',
			),
			'recursive' => '-1',
		));
		foreach ($nodes as $node) {
			$node['Node']['path'] = Croogo::getRelativePath(array(
				'admin' => false,
				'controller' => 'nodes',
				'action' => 'view',
				'type' => $node['Node']['type'],
				'slug' => $node['Node']['slug'],
			));
			$this->Node->id = false;
			$this->Node->save($node);
		}

		$this->Session->setFlash(__('Paths updated.'), 'default', array('class' => 'success'));
		$this->redirect(array('action' => 'index'));
	}

/**
 * Admin delete
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for Node'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Node->delete($id)) {
			$this->Session->setFlash(__('Node deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
		}
	}

/**
 * Admin delete meta
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_delete_meta($id = null) {
		$success = false;
		if ($id != null && $this->Node->Meta->delete($id)) {
			$success = true;
		} else {
			if (!$this->Node->Meta->exists($id)) {
				$success = true;
			}
		}

		$this->set(compact('success'));
	}

/**
 * Admin add meta
 *
 * @return void
 * @access public
 */
	public function admin_add_meta() {
		$this->layout = 'ajax';
	}

/**
 * Admin process
 *
 * @return void
 * @access public
 */
	public function admin_process() {
		$action = $this->request->data['Node']['action'];
		$ids = array();
		foreach ($this->request->data['Node'] as $id => $value) {
			if ($id != 'action' && $value['id'] == 1) {
				$ids[] = $id;
			}
		}

		if (count($ids) == 0 || $action == null) {
			$this->Session->setFlash(__('No items selected.'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}

		if ($action == 'delete' &&
			$this->Node->deleteAll(array('Node.id' => $ids), true, true)) {
			Croogo::dispatchEvent('Controller.Nodes.afterDelete', $this, compact($ids));
			$this->Session->setFlash(__('Nodes deleted.'), 'default', array('class' => 'success'));
		} elseif ($action == 'publish' &&
			$this->Node->updateAll(array('Node.status' => 1), array('Node.id' => $ids))) {
			Croogo::dispatchEvent('Controller.Nodes.afterPublish', $this, compact($ids));
			$this->Session->setFlash(__('Nodes published'), 'default', array('class' => 'success'));
		} elseif ($action == 'unpublish' &&
			$this->Node->updateAll(array('Node.status' => 0), array('Node.id' => $ids))) {
			Croogo::dispatchEvent('Controller.Nodes.afterUnpublish', $this, compact($ids));
			$this->Session->setFlash(__('Nodes unpublished'), 'default', array('class' => 'success'));
		} elseif ($action == 'promote' &&
			$this->Node->updateAll(array('Node.promote' => 1), array('Node.id' => $ids))) {
			Croogo::dispatchEvent('Controller.Nodes.afterPromote', $this, compact($ids));
			$this->Session->setFlash(__('Nodes promoted'), 'default', array('class' => 'success'));
		} elseif ($action == 'unpromote' &&
			$this->Node->updateAll(array('Node.promote' => 0), array('Node.id' => $ids))) {
			Croogo::dispatchEvent('Controller.Nodes.afterUnpromote', $this, compact($ids));
			$this->Session->setFlash(__('Nodes unpromoted'), 'default', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__('An error occurred.'), 'default', array('class' => 'error'));
		}

		$this->redirect(array('action' => 'index'));
	}

/**
 * Index
 *
 * @return void
 * @access public
 */
	public function index() {
		if (!isset($this->request->params['named']['type'])) {
			$this->request->params['named']['type'] = 'node';
		}

		$this->paginate['Node']['order'] = 'Node.created DESC';
		$this->paginate['Node']['limit'] = Configure::read('Reading.nodes_per_page');
		$this->paginate['Node']['conditions'] = array(
			'Node.status' => 1,
			'OR' => array(
				'Node.visibility_roles' => '',
				'Node.visibility_roles LIKE' => '%"' . $this->Croogo->roleId . '"%',
			),
		);
		$this->paginate['Node']['contain'] = array(
			'Meta',
			'Taxonomy' => array(
				'Term',
				'Vocabulary',
			),
			'User',
		);
		if (isset($this->request->params['named']['type'])) {
			$type = $this->Node->Taxonomy->Vocabulary->Type->find('first', array(
				'conditions' => array(
					'Type.alias' => $this->request->params['named']['type'],
				),
				'cache' => array(
					'name' => 'type_' . $this->request->params['named']['type'],
					'config' => 'nodes_index',
				),
			));
			if (!isset($type['Type']['id'])) {
				$this->Session->setFlash(__('Invalid content type.'), 'default', array('class' => 'error'));
				$this->redirect('/');
			}
			if (isset($type['Params']['nodes_per_page'])) {
				$this->paginate['Node']['limit'] = $type['Params']['nodes_per_page'];
			}
			$this->paginate['Node']['conditions']['Node.type'] = $type['Type']['alias'];
			$this->set('title_for_layout', $type['Type']['title']);
		}

		if ($this->usePaginationCache) {
			$cacheNamePrefix = 'nodes_index_' . $this->Croogo->roleId . '_' . Configure::read('Config.language');
			if (isset($type)) {
				$cacheNamePrefix .= '_' . $type['Type']['alias'];
			}
			$this->paginate['page'] = isset($this->request->params['named']['page']) ? $this->params['named']['page'] : 1;
			$cacheName = $cacheNamePrefix . '_' . $this->request->params['named']['type'] . '_' . $this->paginate['page'] . '_' . $this->paginate['Node']['limit'];
			$cacheNamePaging = $cacheNamePrefix . '_' . $this->request->params['named']['type'] . '_' . $this->paginate['page'] . '_' . $this->paginate['Node']['limit'] . '_paging';
			$cacheConfig = 'nodes_index';
			$nodes = Cache::read($cacheName, $cacheConfig);
			if (!$nodes) {
				$nodes = $this->paginate('Node');
				Cache::write($cacheName, $nodes, $cacheConfig);
				Cache::write($cacheNamePaging, $this->request->params['paging'], $cacheConfig);
			} else {
				$paging = Cache::read($cacheNamePaging, $cacheConfig);
				$this->request->params['paging'] = $paging;
				$this->helpers[] = 'Paginator';
			}
		} else {
			$nodes = $this->paginate('Node');
		}

		$this->set(compact('type', 'nodes'));
		$this->_viewFallback(array(
			'index_' . $type['Type']['alias'],
		));
	}

/**
 * Term
 *
 * @return void
 * @access public
 */
	public function term() {
		$term = $this->Node->Taxonomy->Term->find('first', array(
			'conditions' => array(
				'Term.slug' => $this->request->params['named']['slug'],
			),
			'cache' => array(
				'name' => 'term_' . $this->request->params['named']['slug'],
				'config' => 'nodes_term',
			),
		));
		if (!isset($term['Term']['id'])) {
			$this->Session->setFlash(__('Invalid Term.'), 'default', array('class' => 'error'));
			$this->redirect('/');
		}

		if (!isset($this->request->params['named']['type'])) {
			$this->request->params['named']['type'] = 'node';
		}

		$this->paginate['Node']['order'] = 'Node.created DESC';
		$this->paginate['Node']['limit'] = Configure::read('Reading.nodes_per_page');
		$this->paginate['Node']['conditions'] = array(
			'Node.status' => 1,
			'Node.terms LIKE' => '%"' . $this->request->params['named']['slug'] . '"%',
			'OR' => array(
				'Node.visibility_roles' => '',
				'Node.visibility_roles LIKE' => '%"' . $this->Croogo->roleId . '"%',
			),
		);
		$this->paginate['Node']['contain'] = array(
			'Meta',
			'Taxonomy' => array(
				'Term',
				'Vocabulary',
			),
			'User',
		);
		if (isset($this->request->params['named']['type'])) {
			$type = $this->Node->Taxonomy->Vocabulary->Type->find('first', array(
				'conditions' => array(
					'Type.alias' => $this->request->params['named']['type'],
				),
				'cache' => array(
					'name' => 'type_' . $this->request->params['named']['type'],
					'config' => 'nodes_term',
				),
			));
			if (!isset($type['Type']['id'])) {
				$this->Session->setFlash(__('Invalid content type.'), 'default', array('class' => 'error'));
				$this->redirect('/');
			}
			if (isset($type['Params']['nodes_per_page'])) {
				$this->paginate['Node']['limit'] = $type['Params']['nodes_per_page'];
			}
			$this->paginate['Node']['conditions']['Node.type'] = $type['Type']['alias'];
			$this->set('title_for_layout', $term['Term']['title']);
		}

		if ($this->usePaginationCache) {
			$cacheNamePrefix = 'nodes_term_' . $this->Croogo->roleId . '_' . $this->request->params['named']['slug'] . '_' . Configure::read('Config.language');
			if (isset($type)) {
				$cacheNamePrefix .= '_' . $type['Type']['alias'];
			}
			$this->paginate['page'] = isset($this->request->params['named']['page']) ? $this->params['named']['page'] : 1;
			$cacheName = $cacheNamePrefix . '_' . $this->paginate['page'] . '_' . $this->paginate['Node']['limit'];
			$cacheNamePaging = $cacheNamePrefix . '_' . $this->paginate['page'] . '_' . $this->paginate['Node']['limit'] . '_paging';
			$cacheConfig = 'nodes_term';
			$nodes = Cache::read($cacheName, $cacheConfig);
			if (!$nodes) {
				$nodes = $this->paginate('Node');
				Cache::write($cacheName, $nodes, $cacheConfig);
				Cache::write($cacheNamePaging, $this->request->params['paging'], $cacheConfig);
			} else {
				$paging = Cache::read($cacheNamePaging, $cacheConfig);
				$this->request->params['paging'] = $paging;
				$this->helpers[] = 'Paginator';
			}
		} else {
			$nodes = $this->paginate('Node');
		}

		$this->set(compact('term', 'type', 'nodes'));
		$this->_viewFallback(array(
			'term_' . $term['Term']['id'],
			'term_' . $type['Type']['alias'],
		));
	}

/**
 * Promoted
 *
 * @return void
 * @access public
 */
	public function promoted() {
		$this->set('title_for_layout', __('Nodes'));

		$this->paginate['Node']['order'] = 'Node.created DESC';
		$this->paginate['Node']['limit'] = Configure::read('Reading.nodes_per_page');
		$this->paginate['Node']['conditions'] = array(
			'Node.status' => 1,
			'Node.promote' => 1,
			'OR' => array(
				'Node.visibility_roles' => '',
				'Node.visibility_roles LIKE' => '%"' . $this->Croogo->roleId . '"%',
			),
		);
		$this->paginate['Node']['contain'] = array(
			'Meta',
			'Taxonomy' => array(
				'Term',
				'Vocabulary',
			),
			'User',
		);

		if (isset($this->request->params['named']['type'])) {
			$type = $this->Node->Taxonomy->Vocabulary->Type->findByAlias($this->request->params['named']['type']);
			if (!isset($type['Type']['id'])) {
				$this->Session->setFlash(__('Invalid content type.'), 'default', array('class' => 'error'));
				$this->redirect('/');
			}
			if (isset($type['Params']['nodes_per_page'])) {
				$this->paginate['Node']['limit'] = $type['Params']['nodes_per_page'];
			}
			$this->paginate['Node']['conditions']['Node.type'] = $type['Type']['alias'];
			$this->set('title_for_layout', $type['Type']['title']);
			$this->set(compact('type'));
		}

		if ($this->usePaginationCache) {
			$cacheNamePrefix = 'nodes_promoted_' . $this->Croogo->roleId . '_' . Configure::read('Config.language');
			if (isset($type)) {
				$cacheNamePrefix .= '_' . $type['Type']['alias'];
			}
			$this->paginate['page'] = isset($this->request->params['named']['page']) ? $this->params['named']['page'] : 1;
			$cacheName = $cacheNamePrefix . '_' . $this->paginate['page'] . '_' . $this->paginate['Node']['limit'];
			$cacheNamePaging = $cacheNamePrefix . '_' . $this->paginate['page'] . '_' . $this->paginate['Node']['limit'] . '_paging';
			$cacheConfig = 'nodes_promoted';
			$nodes = Cache::read($cacheName, $cacheConfig);
			if (!$nodes) {
				$nodes = $this->paginate('Node');
				Cache::write($cacheName, $nodes, $cacheConfig);
				Cache::write($cacheNamePaging, $this->request->params['paging'], $cacheConfig);
			} else {
				$paging = Cache::read($cacheNamePaging, $cacheConfig);
				$this->request->params['paging'] = $paging;
				$this->helpers[] = 'Paginator';
			}
		} else {
			$nodes = $this->paginate('Node');
		}
		$this->set(compact('nodes'));
	}

/**
 * Search
 *
 * @param string $typeAlias
 * @return void
 * @access public
 */
	public function search($typeAlias = null) {
		if (!isset($this->request->params['named']['q'])) {
			$this->redirect('/');
		}

		App::uses('Sanitize', 'Utility');
		$q = Sanitize::clean($this->request->params['named']['q']);
		$this->paginate['Node']['order'] = 'Node.created DESC';
		$this->paginate['Node']['limit'] = Configure::read('Reading.nodes_per_page');
		$this->paginate['Node']['conditions'] = array(
			'Node.status' => 1,
			'AND' => array(
				array(
					'OR' => array(
						'Node.title LIKE' => '%' . $q . '%',
						'Node.excerpt LIKE' => '%' . $q . '%',
						'Node.body LIKE' => '%' . $q . '%',
						'Node.terms LIKE' => '%"' . $q . '"%',
					),
				),
				array(
					'OR' => array(
						'Node.visibility_roles' => '',
						'Node.visibility_roles LIKE' => '%"' . $this->Croogo->roleId . '"%',
					),
				),
			),
		);
		$this->paginate['Node']['contain'] = array(
			'Meta',
			'Taxonomy' => array(
				'Term',
				'Vocabulary',
			),
			'User',
		);
		if ($typeAlias) {
			$type = $this->Node->Taxonomy->Vocabulary->Type->findByAlias($typeAlias);
			if (!isset($type['Type']['id'])) {
				$this->Session->setFlash(__('Invalid content type.'), 'default', array('class' => 'error'));
				$this->redirect('/');
			}
			if (isset($type['Params']['nodes_per_page'])) {
				$this->paginate['Node']['limit'] = $type['Params']['nodes_per_page'];
			}
			$this->paginate['Node']['conditions']['Node.type'] = $typeAlias;
		}

		$nodes = $this->paginate('Node');
		$this->set('title_for_layout', __('Search Results: %s', $q));
		$this->set(compact('q', 'nodes'));
		if ($typeAlias) {
			$this->_viewFallback(array(
				'search_' . $typeAlias,
			));
		}
	}

/**
 * View
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function view($id = null) {
		if (isset($this->request->params['named']['slug']) && isset($this->params['named']['type'])) {
			$this->Node->type = $this->request->params['named']['type'];
			$type = $this->Node->Taxonomy->Vocabulary->Type->find('first', array(
				'conditions' => array(
					'Type.alias' => $this->Node->type,
				),
				'cache' => array(
					'name' => 'type_' . $this->Node->type,
					'config' => 'nodes_view',
				),
			));
			$node = $this->Node->find('first', array(
				'conditions' => array(
					'Node.slug' => $this->request->params['named']['slug'],
					'Node.type' => $this->request->params['named']['type'],
					'Node.status' => 1,
					'OR' => array(
						'Node.visibility_roles' => '',
						'Node.visibility_roles LIKE' => '%"' . $this->Croogo->roleId . '"%',
					),
				),
				'contain' => array(
					'Meta',
					'Taxonomy' => array(
						'Term',
						'Vocabulary',
					),
					'User',
				),
				'cache' => array(
					'name' => 'node_' . $this->Croogo->roleId . '_' . $this->request->params['named']['type'] . '_' . $this->params['named']['slug'],
					'config' => 'nodes_view',
				),
			));
		} elseif ($id == null) {
			$this->Session->setFlash(__('Invalid content'), 'default', array('class' => 'error'));
			$this->redirect('/');
		} else {
			$node = $this->Node->find('first', array(
				'conditions' => array(
					'Node.id' => $id,
					'Node.status' => 1,
					'OR' => array(
						'Node.visibility_roles' => '',
						'Node.visibility_roles LIKE' => '%"' . $this->Croogo->roleId . '"%',
					),
				),
				'contain' => array(
					'Meta',
					'Taxonomy' => array(
						'Term',
						'Vocabulary',
					),
					'User',
				),
				'cache' => array(
					'name' => 'node_' . $this->Croogo->roleId . '_' . $id,
					'config' => 'nodes_view',
				),
			));
			$this->Node->type = $node['Node']['type'];
			$type = $this->Node->Taxonomy->Vocabulary->Type->find('first', array(
				'conditions' => array(
					'Type.alias' => $this->Node->type,
				),
				'cache' => array(
					'name' => 'type_' . $this->Node->type,
					'config' => 'nodes_view',
				),
			));
		}

		if (!isset($node['Node']['id'])) {
			$this->Session->setFlash(__('Invalid content'), 'default', array('class' => 'error'));
			$this->redirect('/');
		}

		if ($node['Node']['comment_count'] > 0) {
			$comments = $this->Node->Comment->find('threaded', array(
				'conditions' => array(
					'Comment.node_id' => $node['Node']['id'],
					'Comment.status' => 1,
				),
				'contain' => array(
					'User',
				),
				'cache' => array(
					'name' => 'comment_node_' . $node['Node']['id'],
					'config' => 'nodes_view',
				),
			));
		} else {
			$comments = array();
		}

		$this->set('title_for_layout', $node['Node']['title']);
		$this->set(compact('node', 'type', 'comments'));
		$this->_viewFallback(array(
			'view_' . $node['Node']['id'],
			'view_' . $type['Type']['alias'],
		));
	}

/**
 * View Fallback
 *
 * @param mixed $views
 * @return string
 * @access protected
 */
	protected function _viewFallback($views) {
		if (is_string($views)) {
			$views = array($views);
		}

		if ($this->theme) {
			$viewPaths = App::path('View');
			foreach ($views as $view) {
				foreach ($viewPaths as $viewPath) {
					$viewPath = $viewPath . 'Themed' . DS . $this->theme . DS . $this->name . DS . $view . $this->ext;
					if (file_exists($viewPath)) {
						return $this->render($view);
					}
				}
			}
		}
	}

}
