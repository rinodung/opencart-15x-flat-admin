<?php
/******************************************************
 * @package Pav Banner Manager for Opencart 1.5.x
 * @version 1.0
 * @author pavotheme (http://pavotheme.com)
 * @copyright	Copyright (C) May 2013 pavotheme.com <@emai:pavotheme@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 1
*******************************************************/

class ControllerModulepavbannerbuilder extends Controller {
	private $error = array();
	private $mdata = array();

	public function index() {

		$this->load->language('module/pavbannerbuilder');
		$this->load->model('setting/setting');
		$this->load->model('tool/image');
		$this->load->model('extension/module');
		//$this->load->model('pavbannerbuilder/banner');
		$this->document->setTitle( strip_tags( $this->language->get('heading_title') ) );
 

		$this->document->addStyle('view/javascript/jquery/ui/jquery-ui.min.css');
		$this->document->addScript('view/javascript/jquery/ui/jquery-ui.min.js');

		$this->document->addScript('view/javascript/pavbannerbuilder/script.js');
		$this->document->addStyle('view/stylesheet/pavbannerbuilder/style.css');

		if( isset($this->request->get['module_id']) && isset($this->request->get['delete']) ){
			$this->model_extension_module->deleteModule( $this->request->get['module_id'] );
			$this->response->redirect($this->url->link('module/pavbannerbuilder', 'token=' . $this->session->data['token'], 'SSL'));
		}

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			//echo "<pre>"; print_r($this->request->post); die;
			$action = $this->request->post['pavbannerbuilder_module']['action'];
			$store_id = $this->request->post['pavbannerbuilder_module']['store_id'];
			$surl = isset($store_id)?'&store_id='.$store_id:'';

			unset( $this->request->post['pavbannerbuilder_module']['action'] );
			unset( $this->request->post['pavbannerbuilder_module']['store_id']);
			unset( $this->request->post['pavbannerbuilder_module']['stores']);
			unset( $this->request->post['pavbannerbuilder_module']['banners']);	
 
		 	$data = array();
		 	foreach ($this->request->post['pavbannerbuilder_module'] as $key => $value) {
		 		
		 	 	$data = $value;	
		 	 	$data['layout'] = ( htmlspecialchars_decode($value['layout']) );
		 	 	break;
		 	}
		  
			if( empty($data['name']) ){
				$this->error['warning'] = $this->language->get('error_permission');
				if( isset($this->request->get['module_id']) ) {
					$this->response->redirect($this->url->link('module/pavbannerbuilder', 'module_id='.$this->request->get['module_id'].'&token=' . $this->session->data['token'], 'SSL'));
				}else{
					$this->response->redirect($this->url->link('module/pavbannerbuilder', 'token=' . $this->session->data['token'], 'SSL'));
				}
			}	

		 	if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('pavbannerbuilder', $data );
			} else {
				$this->model_extension_module->editModule( $this->request->get['module_id'], $data );
			}	
	




			$this->session->data['success'] = $this->language->get('text_success');
			if($action == "save_stay"){
				$this->response->redirect($this->url->link('module/pavbannerbuilder', 'token=' . $this->session->data['token'], 'SSL'));
			}else{
				$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
			}

		}

		$this->_getLanguage();
		$this->_breadcrumbs();
		$this->_alert();
		
		// Get Stores
		$this->mdata['stores'] = $this->_getStores();
		$store_id = isset($this->request->get['store_id'])?$this->request->get['store_id']:0;
		$this->mdata['store_id'] = $store_id;


		$storeConfig = $this->model_setting_setting->getSetting( 'config',  $store_id );
		$theme = $storeConfig['config_template'];
	 	
	 	$dir = DIR_CATALOG.'view/theme/'.$theme.'/template/module/pavbannerbuilder';  
	 	$output = array();
	 	if( is_dir($dir) ){
	 		$dir = $dir.'/*.tpl';
	 		$files = glob($dir);
	 		$output = array();

	 		foreach( $files as $file ){
	 			
	 			$name =  str_replace( ".tpl", "", basename( $file ) );
	 			$a = file_get_contents( $file );  

	 			if( preg_match( "#Template\s*:\s*([\w+\s+]+)+(\r\n)?#", $a,$match) ){ 
	 				$output[$name] = $match[1];
	 			}else {
	 				$output[$a] = $name;
	 			}
	 		}
	 	}
 
		// Language
		$this->load->model('localisation/language');
		$this->mdata['languages'] = $this->model_localisation_language->getLanguages();

		// Get Banners
		$this->load->model('design/banner');	
		$banners = $this->model_design_banner->getBanners();

		foreach( $banners as $key => $banner  ){
			$banners[$key]['total'] = count( $this->model_design_banner->getBannerImages( $banner['banner_id']) );
		
		}

		$this->mdata['banners'] = $banners; 
		$this->mdata['templates'] = $output;
		$this->mdata['entry_module_title'] = $this->language->get( 'entry_module_title' );
		$this->mdata['entry_description'] = $this->language->get( 'entry_description' );
		// Get Setting Status
			// Get Data Setting
		if (isset($this->request->post['pavbannerbuilder_module'])) {
			$modules = $this->request->post['pavbannerbuilder_module'];
		} else {
			$setting = $this->model_setting_setting->getSetting("pavbannerbuilder", $store_id);
			$modules = isset($setting['pavbannerbuilder_module'])?$setting['pavbannerbuilder']:array();
		}
 		
 		$default = array(
 			'name' => '',
 			'class' => '',
 			'layout' => '',
 			'status' => 0
 		);

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
			$this->mdata['selectedid'] = $this->request->get['module_id'];

			
			$this->mdata['subheading'] = 'Edit Module: '. $module_info['name'];
			$this->mdata['action'] = $this->url->link('module/pavbannerbuilder', 'module_id='.$this->request->get['module_id'].'&token=' . $this->session->data['token'], 'SSL');
		}else {
			$module_info = $default;
			$this->mdata['selectedid'] = 0;
			$this->mdata['subheading'] = 'Create New A Home Page Module';
			$this->mdata['action'] = $this->url->link('module/pavbannerbuilder', 'token=' . $this->session->data['token'], 'SSL');
		}
	 	
	 	$moduletabs = $this->model_extension_module->getModulesByCode( 'pavbannerbuilder' );
	 	$this->mdata['link'] = $this->url->link('module/pavbannerbuilder', 'token=' . $this->session->data['token'] . '', 'SSL');
	 	


		$modules = array( 0=> $module_info );

		$this->mdata['modules'] = $modules; 
 		$this->mdata['moduletabs'] = $moduletabs;
		

		$this->mdata['edit_action'] = $this->url->link('design/banner/edit', 'token=' . $this->session->data['token'], 'SSL');
		$this->mdata['add_action'] = $this->url->link('design/banner/add', 'token=' . $this->session->data['token'], 'SSL');
		$this->mdata['entry_banner_group'] = $this->language->get( 'entry_banner_group' );
		$this->mdata['entry_banner_template'] = $this->language->get( 'entry_banner_template' );
		
		$this->load->model('tool/image');
		$this->mdata['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		// Render
		$this->mdata['header'] = $this->load->controller('common/header');
		$this->mdata['column_left'] = $this->load->controller('common/column_left');
		$this->mdata['footer'] = $this->load->controller('common/footer');
		$template = 'module/pavbannerbuilder/modules.tpl';
		$this->mdata['olang'] = $this->language;
		$this->mdata['ourl'] = $this->url;

		$this->response->setOutput($this->load->view($template, $this->mdata));
	}

	public function _alert(){
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

	public function _getLanguage(){
		$this->mdata['objlang'] = $this->language;

		$this->mdata['heading_title'] = $this->language->get('heading_banner_title');
		$this->mdata['tab_module'] = $this->language->get('tab_module');
		// Text
		$this->mdata['prefix_class'] = $this->language->get('prefix_class');
		// Button
		$this->mdata['button_save'] = $this->language->get('button_save');
		$this->mdata['button_save_stay'] = $this->language->get('button_save_stay');
		$this->mdata['button_cancel'] = $this->language->get('button_cancel');
		$this->mdata['button_add_module'] = $this->language->get('button_add_module');
		// Entry
		$this->mdata['entry_layout'] = $this->language->get('entry_layout');
		$this->mdata['entry_status'] = $this->language->get('entry_status');
		$this->mdata['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->mdata['entry_position'] = $this->language->get('entry_position');
		$this->mdata['entry_tabs'] = $this->language->get('entry_tabs');
		$this->mdata['entry_banner_layouts'] = $this->language->get('entry_banner_layouts');
		$this->mdata['entry_caption'] = $this->language->get('entry_caption');
		$this->mdata['text_disabled'] = $this->language->get('text_disabled');
		$this->mdata['text_enabled'] = $this->language->get('text_enabled');
 	
 		$this->mdata['no_image'] = $this->model_tool_image->resize('no_image.png', 100, 100);	

		// Token
		$this->mdata['token'] = $this->session->data['token'];

		$this->mdata['action'] = $this->url->link('module/pavbannerbuilder', 'token=' . $this->session->data['token'], 'SSL');
		$this->mdata['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/pavbannerbuilder')) {
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
