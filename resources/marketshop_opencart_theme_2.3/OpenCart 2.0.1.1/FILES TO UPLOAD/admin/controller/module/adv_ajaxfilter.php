<?php
class ControllerModuleAdvajaxfilter extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/adv_ajaxfilter');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		$this->load->model('setting/setting');

		if(($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			$this->model_setting_setting->editSetting('adv_ajaxfilter', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->document->addScript('view/javascript/jscolor/jscolor.js');

		$data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_content_top'] = $this->language->get('text_content_top');
		$data['text_content_bottom'] = $this->language->get('text_content_bottom');
		$data['text_column_left'] = $this->language->get('text_column_left');
		$data['text_column_right'] = $this->language->get('text_column_right');
		$data['text_option_mode'] = $this->language->get('text_option_mode');
		$data['text_filter_group_mode'] = $this->language->get('text_filter_group_mode');
		$data['text_attribute_mode'] = $this->language->get('text_attribute_mode');
		$data['text_attribute_value_mode'] = $this->language->get('text_attribute_value_mode');
		$data['text_mode_or'] = $this->language->get('text_mode_or');
		$data['text_mode_and'] = $this->language->get('text_mode_and');
		$data['text_attr_group'] = $this->language->get('text_attr_group');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_filter_position'] = $this->language->get('text_filter_position');
		$data['text_product_container'] = $this->language->get('text_product_container');
		$data['text_expanded'] = $this->language->get('text_expanded');
		$data['text_tax'] = $this->language->get('text_tax');
		$data['text_adv_ajaxfilter_container'] = $this->language->get('text_adv_ajaxfilter_container');
		$data['text_adv_ajaxfilter_afterload'] = $this->language->get('text_adv_ajaxfilter_afterload');
		$data['text_theme_mega'] = $this->language->get('text_theme_mega');

		$data['text_none'] = $this->language->get('text_none');
		$data['text_price_slider'] = $this->language->get('text_price_slider');
		$data['text_attr_delimeter'] = $this->language->get('text_attr_delimeter');

		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_categories'] = $this->language->get('text_categories');
		$data['text_tags'] = $this->language->get('text_tags');
		$data['text_filters'] = $this->language->get('text_filters');
		$data['text_instock'] = $this->language->get('text_instock');
		$data['text_checked'] = $this->language->get('text_checked');
		$data['text_visible'] = $this->language->get('text_visible');

		$data['entry_layout'] = $this->language->get('entry_layout');
		$data['entry_position'] = $this->language->get('entry_position');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['entry_module_title'] = $this->language->get('entry_module_title');
		$data['entry_module_color'] = $this->language->get('entry_module_color');
		$data['entry_module_border_color'] = $this->language->get('entry_module_border_color');
		$data['entry_module_hover_color'] = $this->language->get('entry_module_hover_color');
		$data['entry_module_text_color'] = $this->language->get('entry_module_text_color');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_apply'] = $this->language->get('button_apply');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_module_add'] = $this->language->get('button_module_add');
		$data['button_remove'] = $this->language->get('button_remove');
		$data['button_create'] = $this->language->get('button_create');

		$this->load->model('catalog/option');

		$total_options = $this->model_catalog_option->getTotalOptions();
		$data['options'] = $this->model_catalog_option->getOptions(array('start' => 0, 'limit' => $total_options));
		foreach($data['options'] as $i => $option) {
			if(!in_array($option['type'], array('radio', 'checkbox', 'select', 'image'))) {
				unset($data['options'][$i]);
			}
		}

		$this->load->model('catalog/attribute');

		$total_attributes = $this->model_catalog_attribute->getTotalAttributes();
		$data['attributes'] = $this->model_catalog_attribute->getAttributes(array('start' => 0, 'limit' => $total_attributes));

		if(isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if(isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if(isset($this->session->data['error'])) {
			$data['error'] = $this->session->data['error'];
			unset($this->session->data['error']);
		} else {
			$data['error'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/adv_ajaxfilter', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		$data['action'] = $this->url->link('module/adv_ajaxfilter', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

        if (isset($this->request->post['adv_ajaxfilter_module'])) {
            $data['modules'] = $this->request->post['adv_ajaxfilter_module'];
        } elseif ($this->config->has('adv_ajaxfilter_module')) {
            $data['modules'] = $this->config->get('adv_ajaxfilter_module');
        } else {
            $data['modules'] = array();
        }

		$this->load->model('design/layout');

		$data['layouts'] = $this->model_design_layout->getLayouts();
		$data['container_layouts'] = $data['layouts'];

		$cat_layout = false;
		foreach($data['layouts'] as $i => $layout) {
			if($layout['layout_id'] == 3) {
				$cat_layout = $i;
				break;
			}
		}
		if($cat_layout) {
			$temp = $data['layouts'][$cat_layout];
			$data['layouts'][$cat_layout] = $data['layouts'][0];
			$data['layouts'][0] = $temp;
			unset($data['container_layouts'][$cat_layout]);
		}

        if(isset($this->request->post['adv_ajaxfilter_status']) || isset($this->request->post['adv_ajaxfilter_setting'])) {
            $data['adv_ajaxfilter_status'] = $this->request->post['adv_ajaxfilter_status'];
            $data['setting'] = $this->request->post['adv_ajaxfilter_setting'];
        } elseif($this->config->get('adv_ajaxfilter_status')) {
            $data['adv_ajaxfilter_status'] = $this->config->get('adv_ajaxfilter_status');
            $data['setting'] = $this->config->get('adv_ajaxfilter_setting');
        }

		if (!isset($data['setting']['adv_ajaxfilter_container'])) {
			$data['setting']['adv_ajaxfilter_container'] = "list";
		}
		if (!isset($data['setting']['adv_ajaxfilter_afterload'])) {
			$data['setting']['adv_ajaxfilter_afterload'] = "";
		}

        $data['display_tags'][] = array('value' => 'checkbox', 'name' => $this->language->get('text_display_checkbox'));
      	$data['display_tags'][] = array('value' => 'none', 'name' => $this->language->get('text_display_none'));


		$data['display_categories'][] = array('value' => 'checkbox', 'name' => $this->language->get('text_display_checkbox'));
		$data['display_categories'][] = array('value' => 'none', 'name' => $this->language->get('text_display_none'));
        $data['display_categories'][] = array('value' => 'select', 'name' => $this->language->get('text_display_select'));

        $data['display_options'][] = array('value' => 'checkbox', 'name' => $this->language->get('text_display_checkbox'));
		$data['display_options'][] = array('value' => 'none', 'name' => $this->language->get('text_display_none'));
		$data['display_options'][] = array('value' => 'select', 'name' => $this->language->get('text_display_select'));
		$data['display_options'][] = array('value' => 'radio', 'name' => $this->language->get('text_display_radio'));
		$data['display_options'][] = array('value' => 'image', 'name' => $this->language->get('text_display_image'));

		$data['display_filters'][] = array('value' => 'checkbox', 'name' => $this->language->get('text_display_checkbox'));
		$data['display_filters'][] = array('value' => 'none', 'name' => $this->language->get('text_display_none'));
		$data['display_filters'][] = array('value' => 'select', 'name' => $this->language->get('text_display_select'));
		$data['display_filters'][] = array('value' => 'radio', 'name' => $this->language->get('text_display_radio'));
		
		$data['display_options_attr'][] = array('value' => 'checkbox', 'name' => $this->language->get('text_display_checkbox'));
		$data['display_options_attr'][] = array('value' => 'none', 'name' => $this->language->get('text_display_none'));
		$data['display_options_attr'][] = array('value' => 'select', 'name' => $this->language->get('text_display_select'));
		$data['display_options_attr'][] = array('value' => 'radio', 'name' => $this->language->get('text_display_radio'));
		$data['display_options_attr'][] = array('value' => 'slider', 'name' => $this->language->get('text_display_slider'));

		$this->template = 'module/adv_ajaxfilter.tpl';
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');;

        
		$this->response->setOutput($this->load->view($this->template, $data));
	}

	public function install() {

		$store_id = (int)$this->config->get('config_store_id');
		$query = $this->db->query("SELECT `layout_id` FROM `" . DB_PREFIX . "layout_route` WHERE store_id='" . $store_id . "' AND route='product/adv_ajaxfilter'");
		if($query->num_rows) {
			$layout_id = $query->row['layout_id'];
		} else {
			$this->load->model('design/layout');

			$this->model_design_layout->addLayout(array('name' => 'Adv Ajax Filter', 'layout_route' => array(0 => array('store_id' => $store_id, 'route' => 'product/adv_ajaxfilter'))));
		}

		foreach(array(
			'product_option_value' => array('option_value_id', 'product_id'),
			'product_to_category' => array('category_id')) as $table => $indexes) {
			$query = $this->db->query("SHOW INDEX FROM `" . DB_PREFIX . $table . "`");

			$keys = array();
			foreach($query->rows as $row) {
				if($row['Key_name'] != 'PRIMARY') {
					$keys[] = $row['Column_name'];
				}
			}
			$keys = array_diff($indexes, $keys);
			foreach($keys as $key) {
				$this->db->query("ALTER TABLE `" . DB_PREFIX . $table . "` ADD INDEX ( `" . $key . "` )");
			}
		}
	}

	private function validate() {
		if(!$this->user->hasPermission('modify', 'module/adv_ajaxfilter')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if(!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}

?>