<?php
class ControllerModulePavcustom extends Controller {
	private $error = array(); 
	 
	public function index() {   
		$this->language->load('module/pavcustom');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
				
			
			$action = $this->request->post['pavcustom_module']['action'];
			$store_id = $this->request->post['pavcustom_module']['store_id'];
			$surl = isset($store_id)?'&store_id='.$store_id:'';

			unset( $this->request->post['pavcustom_module']['action'] );
			unset( $this->request->post['pavcustom_module']['store_id']);
			unset( $this->request->post['pavcustom_module']['stores']);
			
			$this->model_setting_setting->editSetting('pavcustom', $this->request->post, $store_id);		
			
			$this->session->data['success'] = $this->language->get('text_success');
			
			if( $action == 'saveedit' ){
				$this->redirect($this->url->link('module/pavcustom', 'token=' . $this->session->data['token'].$surl, 'SSL'));
			}else {		
				$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		
		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');
		$this->data['text_select_all'] = $this->language->get('text_select_all');
		$this->data['text_unselect_all'] = $this->language->get('text_unselect_all');
		$this->data['entry_store'] = $this->language->get('entry_store');
		$this->data['help_store'] = $this->language->get('help_store');

		$this->data['entry_description'] = $this->language->get('entry_description');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		$this->data['entry_module_class'] = $this->language->get( 'entry_module_class' );
		$this->data['entry_module_title'] = $this->language->get( 'entry_module_title' );
		$this->data['tab_module'] = $this->language->get('tab_module');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		// Start GetData Store
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
		$this->data['stores'] = $stores;
		$store_id = isset($this->request->get['store_id'])?$this->request->get['store_id']:0;
		$this->data['store_id'] = $store_id;
		// End GetData Store

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/pavcustom', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/pavcustom', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['token'] = $this->session->data['token'];

		$this->data['modules'] = array();
		$this->data['positions'] = array( 'mainmenu',
										  'slideshow',
										  'showcase',
										  'promotion',
										  'content_top',
										  'column_left',
										  'column_right',
										  'content_bottom',
										  'mass_bottom',
										  'footer_top',
										  'footer_center',
										  'footer_bottom'
		);
		
		$themeConfig = $this->config->get( 'themecontrol' );
		if( isset($themeConfig['default_theme']) ){
			$layoutxml = DIR_CATALOG.'view/theme/'.$themeConfig['default_theme'].'/development/layout/default.php';
			if( file_exists($layoutxml) ){
				include( $layoutxml );
		 		$this->data['positions'] = PavoLayoutPositions::getList();
			}
		}	
		
		if (isset($this->request->post['pavcustom_module'])) {
			$this->data['modules'] = $this->request->post['pavcustom_module'];
		} else {
			$setting = $this->model_setting_setting->getSetting("pavcustom", $store_id);
			$this->data['modules'] = isset($setting['pavcustom_module'])?$setting['pavcustom_module']:array();
		}	
				
		$this->load->model('design/layout');
		$this->data['layouts'][] = array('layout_id'=>99999, 'name' => $this->language->get('all_page') );
		
		$this->data['layouts'] = array_merge($this->data['layouts'],$this->model_design_layout->getLayouts());
		
		
		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		$this->template = 'module/pavcustom.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
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
