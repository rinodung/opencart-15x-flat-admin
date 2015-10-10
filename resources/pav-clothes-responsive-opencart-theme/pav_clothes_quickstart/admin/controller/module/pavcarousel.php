<?php
class ControllerModulePavcarousel extends Controller {
	private $error = array();

	public $data = array();

	public function index() {

		$this->data['objlang'] = $this->language;
		$this->data['objurl'] = $this->url;

		$this->load->language('module/pavcarousel');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');
		$this->load->model('extension/extension');
		$this->load->model('extension/module');
		$this->load->model('tool/image');

		if( isset($this->request->get['module_id']) && isset($this->request->get['delete']) ){
			$this->model_extension_module->deleteModule( $this->request->get['module_id'] );
			$this->response->redirect($this->url->link('module/pavcarousel', 'token=' . $this->session->data['token'], 'SSL'));
		}

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {


			$action = isset($this->request->post["action"]) ? $this->request->post["action"] : "";
			unset($this->request->post['pavcarousel_module']['action']);

		 	$data = array();
			foreach ($this->request->post['pavcarousel_module'] as $key => $value) {
		 	 	$data = $value;
		 	 	break;
		 	}


			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('pavcarousel', $data );
			} else {
				$this->model_extension_module->editModule( $this->request->get['module_id'], $data );
			}

			$this->session->data['success'] = $this->language->get('text_success');
			if( isset($this->request->get['module_id']) ) {
				$this->response->redirect($this->url->link('module/pavcarousel', 'module_id='.$this->request->get['module_id'].'&token=' . $this->session->data['token'], 'SSL'));
			}else{
				$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}

		$this->_language();

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

		if (isset($this->error['dimension'])) {
			$this->data['error_dimension'] = $this->error['dimension'];
		} else {
			$this->data['error_dimension'] = array();
		}

		$this->data['entry_tabs'] = $this->language->get('entry_tabs');

		$this->_breadcrumbs();

		$this->data['action'] = $this->url->link('module/pavcarousel', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['modules'] = array();

		if (isset($this->request->post['pavcarousel_status'])) {
			$this->data['pavcarousel_status'] = $this->request->post['pavcarousel_status'];
		} else {
			$this->data['pavcarousel_status'] = $this->config->get('pavcarousel_status');
		}

		$default = array(
			'banner_id' => '',
			'itemsperpage' => 4,
			'limit' => 8,
			'auto_play' => 1,
			'interval'		=> 3000,
			'columns' => 3,
			'width'	=> 100,
			'height'	=> 100,
			'name'	=> ''
		);


		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
			$module_info = array_merge( $default, $module_info );
			$this->data['selectedid'] = $this->request->get['module_id'];


			$this->data['subheading'] = $this->language->get('text_edit_module') . $module_info['name'];
			$this->data['action'] = $this->url->link('module/pavcarousel', 'module_id='.$this->request->get['module_id'].'&token=' . $this->session->data['token'], 'SSL');
		}else {
			$module_info = $default;
			$this->data['selectedid'] = 0;
			$this->data['subheading'] = $this->language->get('text_create_new_module');
			$this->data['action'] = $this->url->link('module/pavcarousel', 'token=' . $this->session->data['token'], 'SSL');
		}

		$modules = array( 0=> $module_info );

		$moduletabs = $this->model_extension_module->getModulesByCode( 'pavcarousel' );
	 	$this->data['link'] = $this->url->link('module/pavcarousel', 'token=' . $this->session->data['token'] . '', 'SSL');
 		$this->data['modules'] = $modules;


 		$this->data['moduletabs'] = $moduletabs;


 		$this->data['olang']  = $this->language;

		$this->load->model('design/layout');


		$this->data['layouts'] = array();
		$this->data['layouts'][] = array('layout_id'=>99999, 'name' => $this->language->get('all_page') );

		$this->data['layouts'] = array_merge($this->data['layouts'],$this->model_design_layout->getLayouts());


		$this->load->model('design/banner');

		$this->data['banners'] = $this->model_design_banner->getBanners();

		$this->data['header'] = $this->load->controller('common/header');
		$this->data['column_left'] = $this->load->controller('common/column_left');
		$this->data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/pavcarousel.tpl', $this->data));
	}

	public function _language(){

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_edit'] = $this->language->get('text_edit');
		$this->data['text_save_edit'] = $this->language->get('text_save_edit');
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');

		$this->data['entry_banner'] = $this->language->get('entry_banner');
		$this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['entry_columns'] = $this->language->get('entry_columns');
		$this->data['entry_image'] = $this->language->get('entry_image');
		$this->data['entry_auto_play'] = $this->language->get('entry_auto_play');
		$this->data['entry_interval'] = $this->language->get('entry_interval');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_itemsprepage'] = $this->language->get('entry_itemsprepage');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_module_add'] = $this->language->get('button_module_add');
		$this->data['button_remove'] = $this->language->get('button_remove');

	}

	public function _breadcrumbs(){
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
			'href'      => $this->url->link('module/pavcarousel', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/pavcarousel')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (isset($this->request->post['pavcarousel_module'])) {
			foreach ($this->request->post['pavcarousel_module'] as $key => $value) {
				if( (isset($value['width'])) && (isset($value['height'])) ){
					if (!$value['width'] || !$value['height']) {
						$this->error['image'][$key] = $this->language->get('error_image');
					}
				}
			}
		}

		return !$this->error;
	}
}