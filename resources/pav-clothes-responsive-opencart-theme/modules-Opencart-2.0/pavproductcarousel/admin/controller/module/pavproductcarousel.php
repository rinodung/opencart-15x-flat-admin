<?php
class ControllerModulePavproductcarousel extends Controller {
	private $error = array();
	private $data;

	public function index() {

		$this->language->load('module/pavproductcarousel');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('pavproductcarousel', $this->request->post);
				$this->response->redirect($this->url->link('module/pavproductcarousel', 'token=' . $this->session->data['token'], 'SSL'));
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
				$this->response->redirect($this->url->link('module/pavproductcarousel', 'token=' . $this->session->data['token'].'&module_id='.$this->request->get['module_id'], 'SSL'));
			}

			$this->session->data['success'] = $this->language->get('text_success');
		}
		// COMMON
		$this->_language();
 		$this->_alert();
 		$this->_breadcrumbs();

 		// DATA
 		$this->_data();
		
		// RENDER
		$template = 'module/pavproductcarousel.tpl';
		$this->data['header'] = $this->load->controller('common/header');
		$this->data['column_left'] = $this->load->controller('common/column_left');
		$this->data['footer'] = $this->load->controller('common/footer');
		$this->response->setOutput($this->load->view($template, $this->data));
	}

	public function _data(){
		if (!isset($this->request->get['module_id'])) {
			$this->data['action'] = $this->url->link('module/pavproductcarousel', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$this->data['action'] = $this->url->link('module/pavproductcarousel', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		// GET DATA SETTING
		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}

		// products
		$this->load->model('catalog/product');
		$this->data['products'] = array();
		if (isset($this->request->post['product'])) {
			$products = $this->request->post['product'];
		} elseif (!empty($module_info)) {
			$products = isset($module_info['product'])?$module_info['product']:array();
		} else {
			$products = array();
		}	
		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);
			if ($product_info) {
				$this->data['products'][] = array(
					'product_id' => $product_info['product_id'],
					'name'       => $product_info['name']
				);
			}
		}

		// NAME
		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$this->data['name'] = $module_info['name'];
		} else {
			$this->data['name'] = 'Module Name';
		}

		// STATUS
		if (isset($this->request->post['status'])) {
			$this->data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$this->data['status'] = $module_info['status'];
		} else {
			$this->data['status'] = 1;
		}

		// DESCRIPTION
		if (isset($this->request->post['description'])) {
			$this->data['description'] = $this->request->post['description'];
		} elseif (!empty($module_info)) {
			$this->data['description'] = $module_info['description'];
		} else {
			$this->data['description'] = '';
		}

		// CLASS
		if (isset($this->request->post['prefix'])) {
			$this->data['prefix'] = $this->request->post['prefix'];
		} elseif (!empty($module_info)) {
			$this->data['prefix'] = $module_info['prefix'];
		} else {
			$this->data['prefix'] = 'prefix';
		}
		
		// FONTAWESOME
		if (isset($this->request->post['fontawesome'])) {
			$this->data['fontawesome'] = $this->request->post['fontawesome'];
		} elseif (!empty($module_info)) {
			$this->data['fontawesome'] = $module_info['fontawesome'];
		} else {
			$this->data['fontawesome'] = 'fontawesome';
		}

		// CLASS
		if (isset($this->request->post['tabs'])) {
			$this->data['tabs'] = $this->request->post['tabs'];
		} elseif (!empty($module_info)) {
			$this->data['tabs'] = $module_info['tabs'];
		} else {
			$this->data['tabs'] = array(1=>'featured');
		}

		// width
		if (isset($this->request->post['width'])) {
			$this->data['width'] = $this->request->post['width'];
		} elseif (!empty($module_info)) {
			$this->data['width'] = $module_info['width'];
		} else {
			$this->data['width'] = '600';
		}
		
		// height
		if (isset($this->request->post['height'])) {
			$this->data['height'] = $this->request->post['height'];
		} elseif (!empty($module_info)) {
			$this->data['height'] = $module_info['height'];
		} else {
			$this->data['height'] = '666';
		}

		// itemsperpage
		if (isset($this->request->post['itemsperpage'])) {
			$this->data['itemsperpage'] = $this->request->post['itemsperpage'];
		} elseif (!empty($module_info)) {
			$this->data['itemsperpage'] = $module_info['itemsperpage'];
		} else {
			$this->data['itemsperpage'] = '4';
		}

		// cols
		if (isset($this->request->post['cols'])) {
			$this->data['cols'] = $this->request->post['cols'];
		} elseif (!empty($module_info)) {
			$this->data['cols'] = $module_info['cols'];
		} else {
			$this->data['cols'] = '4';
		}

		// limit
		if (isset($this->request->post['limit'])) {
			$this->data['limit'] = $this->request->post['limit'];
		} elseif (!empty($module_info)) {
			$this->data['limit'] = $module_info['limit'];
		} else {
			$this->data['limit'] = '4';
		}
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
			'href'      => $this->url->link('module/pavproductcarousel', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
	}

	public function _language(){
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_edit'] = $this->language->get('text_edit');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');

		$this->data['entry_banner'] = $this->language->get('entry_banner');
		$this->data['entry_dimension'] = $this->language->get('entry_dimension');
		$this->data['entry_carousel'] = $this->language->get('entry_carousel');
		$this->data['entry_description'] = $this->language->get('entry_description');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');

		$this->data['entry_product'] = $this->language->get('entry_product');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_module_add'] = $this->language->get('button_module_add');
		$this->data['button_remove'] = $this->language->get('button_remove');

		$this->data['yesno'] = array(
			0=>$this->language->get('text_no'),
			1=>$this->language->get('text_yes')
		);

		$this->data['entry_tabs'] = $this->language->get('entry_tabs');

		$tmptabs = array(
			'featured' => $this->language->get('text_featured'),
			'latest' 	 => $this->language->get('text_latest'),
			'bestseller' => $this->language->get('text_bestseller'),
			'special'   => $this->language->get('text_special'),
			'mostviewed' => $this->language->get('text_mostviewed'),
			'toprating' => $this->language->get('text_toprating'),
		);
		$this->data['tmptabs'] = $tmptabs;

		$this->data['token'] = $this->session->data['token'];

		$this->load->model('localisation/language');
		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		$this->data['objlang'] = $this->language;
	}

	public function _alert(){
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
	}

	public function redirect( $url ){
		return $this->response->redirect( $url );
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/pavproductcarousel')) {
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
