<?php
class ControllerModulePavcustom extends Controller {
	private $error = array(); 
	private $mdata = array(); 
	 
	public function index() {  

		$this->mdata['objlang'] = $this->language;
		$this->mdata['objurl'] = $this->url;

		$this->load->language('module/pavcustom');
		$this->load->model('extension/extension');
		$this->load->model('extension/module');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
	
		if( isset($this->request->get['module_id']) && isset($this->request->get['delete']) ){
			$this->model_extension_module->deleteModule( $this->request->get['module_id'] );
			$this->response->redirect($this->url->link('module/pavcustom', 'token=' . $this->session->data['token'], 'SSL'));
		}
						
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			
			$action = $this->request->post['pavcustom_module']['action'];
			$store_id = $this->request->post['pavcustom_module']['store_id'];
			$surl = isset($store_id)?'&store_id='.$store_id:'';

			unset( $this->request->post['pavcustom_module']['action'] );
			unset( $this->request->post['pavcustom_module']['store_id']);
			unset( $this->request->post['pavcustom_module']['stores']);

			unset($this->request->post['pavcustom_module']['action']);

		 	$data = array();
				
			foreach ($this->request->post['pavcustom_module'] as $key => $value) {
		 	 	$data = $value;	
		 	 	break;
		 	}	

			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('pavcustom', $data );
			} else {
				$this->model_extension_module->editModule( $this->request->get['module_id'], $data );
			}	
 	
			$this->session->data['success'] = $this->language->get('text_success');
			if( isset($this->request->get['module_id'])  && $action == 'saveedit' ) {
				$this->response->redirect($this->url->link('module/pavcustom', 'module_id='.$this->request->get['module_id'].'&token=' . $this->session->data['token'], 'SSL'));
			}else{
				$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
			}

		}
				
		$this->_language();
		
		$this->mdata['stores'] = $this->_getStores();
		$store_id = isset($this->request->get['store_id'])?$this->request->get['store_id']:0;
		$this->mdata['store_id'] = $store_id;

		$this->_breadcrumbs();

		// Alert
 		if (isset($this->error['warning'])) {
			$this->mdata['error_warning'] = $this->error['warning'];
		} else {
			$this->mdata['error_warning'] = '';
		}
		if (isset($this->session->data['success'])) {
			$this->mdata['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$this->mdata['success'] = '';
		}

		// Get Setting Status
		if (isset($this->request->post['pavcustom_status'])) {
			$this->mdata['pavcustom_status'] = $this->request->post['pavcustom_status'];
		} else {
			$this->mdata['pavcustom_status'] = $this->config->get('pavcustom_status');
		}

		$default = array(
			'name' => '',
			'module_class'	=> '',
			'show_title'	=> 0,
			'module_title'	=> array(),
			'description'	=> array(), 
		);

	 
		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
			$module_info = array_merge( $default, $module_info );
			$this->mdata['selectedid'] = $this->request->get['module_id'];
			$this->mdata['subheading'] = $this->language->get('text_edit_module') . $module_info['name'];
			$this->mdata['action'] = $this->url->link('module/pavcustom', 'module_id='.$this->request->get['module_id'].'&token=' . $this->session->data['token'], 'SSL');
		}else {
			$module_info = $default;
			$this->mdata['selectedid'] = 0;
			$this->mdata['subheading'] = $this->language->get('text_create_new_module');
			$this->mdata['action'] = $this->url->link('module/pavcustom', 'token=' . $this->session->data['token'], 'SSL');
		}


		

		$moduletabs = $this->model_extension_module->getModulesByCode( 'pavcustom' );
	 	$this->mdata['link'] = $this->url->link('module/pavcustom', 'token=' . $this->session->data['token'] . '', 'SSL');
 	
 	 
 		$this->mdata['moduletabs'] = $moduletabs;
 
 		$this->mdata['olang']  = $this->language; 
		

		$this->load->model('localisation/language');
		$this->mdata['languages'] = $this->model_localisation_language->getLanguages();

 
		foreach( $this->mdata['languages'] as $lang ){
			if( empty($module_info['description']) ) {
				$module_info['description'][$lang['language_id']] = ''; 
			}
			if( empty($module_info['module_title']) ){
				$module_info['module_title'][$lang['language_id']] = '';
			} 
		}


		$modules = array( 0=> $module_info );
		$this->mdata['module'] = $module_info;
		$this->mdata['modules'] = $modules; 

		// Render
		$this->mdata['header'] = $this->load->controller('common/header');
		$this->mdata['column_left'] = $this->load->controller('common/column_left');
		$this->mdata['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/pavcustom.tpl', $this->mdata));

	}

	public function _breadcrumbs(){
		$this->mdata['breadcrumbs'] = array();

   		$this->mdata['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->mdata['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->mdata['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/pavcustom', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
	}

	public function _getStores(){

		$this->load->model('setting/store');

		$action = array();
		$action[] = array(
			'text' => $this->language->get('text_edit'),
			'href' => $this->url->link('setting/setting', 'token=' . $this->session->data['token'], 'SSL')
		);
		$store_default = array(
			'store_id' => 0,
			'name'     => $this->config->get('config_name') . $this->language->get('text_default'),
			'url'      => HTTP_CATALOG,
		);
		$stores = $this->model_setting_store->getStores();
		array_unshift($stores, $store_default);
		
		foreach ($stores as &$store) {
			$url = '';
			if ($store['store_id'] > 0 ) {
				$url = '&store_id='.$store['store_id'];
			}
			$store['option'] = $this->url->link('module/pavcustom', $url.'&token=' . $this->session->data['token'], 'SSL');
		}
		return $stores;
	}

	public function _language(){
		$this->mdata['heading_title'] = $this->language->get('heading_title');

		$this->mdata['text_enabled'] = $this->language->get('text_enabled');
		$this->mdata['text_disabled'] = $this->language->get('text_disabled');
		$this->mdata['text_content_top'] = $this->language->get('text_content_top');
		$this->mdata['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->mdata['text_column_left'] = $this->language->get('text_column_left');
		$this->mdata['text_column_right'] = $this->language->get('text_column_right');
		
		$this->mdata['text_browse'] = $this->language->get('text_browse');
		$this->mdata['text_clear'] = $this->language->get('text_clear');
		$this->mdata['text_select_all'] = $this->language->get('text_select_all');
		$this->mdata['text_unselect_all'] = $this->language->get('text_unselect_all');
		$this->mdata['entry_store'] = $this->language->get('entry_store');
		$this->mdata['help_store'] = $this->language->get('help_store');

		$this->mdata['entry_description'] = $this->language->get('entry_description');
		$this->mdata['entry_layout'] = $this->language->get('entry_layout');
		$this->mdata['entry_position'] = $this->language->get('entry_position');
		$this->mdata['entry_status'] = $this->language->get('entry_status');
		$this->mdata['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$this->mdata['button_save'] = $this->language->get('button_save');
		$this->mdata['button_cancel'] = $this->language->get('button_cancel');
		$this->mdata['button_add_module'] = $this->language->get('button_add_module');
		$this->mdata['button_remove'] = $this->language->get('button_remove');
		$this->mdata['entry_module_class'] = $this->language->get( 'entry_module_class' );
		$this->mdata['entry_module_title'] = $this->language->get( 'entry_module_title' );
		$this->mdata['tab_module'] = $this->language->get('tab_module');

		$this->mdata['action'] = $this->url->link('module/pavcustom', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->mdata['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->mdata['token'] = $this->session->data['token'];
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/pavcustom')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>
