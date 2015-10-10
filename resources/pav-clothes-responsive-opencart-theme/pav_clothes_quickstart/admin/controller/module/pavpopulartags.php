<?php
/******************************************************
 * @package  : Pav Popular tags module for Opencart 1.5.x
 * @version  : 1.0
 * @author   : http://www.pavothemes.com
 * @copyright: Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license  : GNU General Public License version 1
*******************************************************/

class ControllerModulePavpopulartags extends Controller {
	private $error = array();

	private $data = array();

	public function index() {

		$this->data['objlang'] = $this->language;
		$this->data['objurl'] = $this->url;

		$this->load->language('module/pavpopulartags');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');
		$this->load->model('extension/extension');
		$this->load->model('extension/module');
		$this->load->model('tool/image');

		if( isset($this->request->get['module_id']) && isset($this->request->get['delete']) ){
			$this->model_extension_module->deleteModule( $this->request->get['module_id'] );
			$this->response->redirect($this->url->link('module/pavpopulartags', 'token=' . $this->session->data['token'], 'SSL'));
		}

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {


			$action = isset($this->request->post["action"]) ? $this->request->post["action"] : "";
			unset($this->request->post['pavpopulartags_module']['action']);

		 	$data = array();
			foreach ($this->request->post['pavpopulartags_module'] as $key => $value) {
		 	 	$data = $value;
		 	 	break;
		 	}


			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('pavpopulartags', $data );
			} else {
				$this->model_extension_module->editModule( $this->request->get['module_id'], $data );
			}

			$this->session->data['success'] = $this->language->get('text_success');
			if( isset($this->request->get['module_id']) ) {
				$this->response->redirect($this->url->link('module/pavpopulartags', 'module_id='.$this->request->get['module_id'].'&token=' . $this->session->data['token'], 'SSL'));
			}else{
				$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}

		$this->_getLanguage();


		$this->data['fontweights'] = array(
			'lighter',
			'normal',
			'bold',
			'bolder',
		);

		// Data
		$this->data['tab_module'] = $this->language->get('tab_module');

		$this->data['yesno'] = array(
			0=>$this->language->get('text_no'),
			1=>$this->language->get('text_yes')
		);

		$this->load->model('localisation/language');
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		$this->data['token'] = $this->session->data['token'];


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

		$this->_getBreadcrumbs();


		$this->data['action'] = $this->url->link('module/pavpopulartags', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['modules'] = array();

		if (isset($this->request->post['pavpopulartags_status'])) {
			$this->data['pavpopulartags_status'] = $this->request->post['pavpopulartags_status'];
		} else {
			$this->data['pavpopulartags_status'] = $this->config->get('pavpopulartags_status');
		}

		$default = array(
			'title' => array(),
			'limit_tags' => 20,
			'min_font_size'		=> '9px',
			'max_font_size'	=> '25px',
			'font_weight'=> array(),
			'prefix'	=> '',
			'name'	=> ''
		);

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
			$module_info = array_merge( $default, $module_info );
			$this->data['selectedid'] = $this->request->get['module_id'];


			$this->data['subheading'] = $this->language->get('text_edit_module') . $module_info['name'];
			$this->data['action'] = $this->url->link('module/pavpopulartags', 'module_id='.$this->request->get['module_id'].'&token=' . $this->session->data['token'], 'SSL');
		}else {
			$module_info = $default;
			$this->data['selectedid'] = 0;
			$this->data['subheading'] = $this->language->get('text_create_new_module');
			$this->data['action'] = $this->url->link('module/pavpopulartags', 'token=' . $this->session->data['token'], 'SSL');
		}

		$modules = array( 0=> $module_info );

		$moduletabs = $this->model_extension_module->getModulesByCode( 'pavpopulartags' );
	 	$this->data['link'] = $this->url->link('module/pavpopulartags', 'token=' . $this->session->data['token'] . '', 'SSL');
 		$this->data['modules'] = $modules;


 		$this->data['moduletabs'] = $moduletabs;


 		$this->data['olang']  = $this->language;

		$this->load->model('design/banner');
		$this->data['banners'] = $this->model_design_banner->getBanners();

		$this->data['header'] = $this->load->controller('common/header');
		$this->data['column_left'] = $this->load->controller('common/column_left');
		$this->data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/pavpopulartags.tpl', $this->data));
	}

	public function _getLanguage(){
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');


		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_tabs'] = $this->language->get('entry_tabs');
		$this->data['entry_status_order'] = $this->language->get('entry_status_order');


		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
	}

	public function _getBreadcrumbs(){
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
			'href'      => $this->url->link('module/pavpopulartags', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/pavpopulartags')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (isset($this->request->post['pavpopulartags_module'])) {

		}

		return !$this->error;
	}

}
?>
