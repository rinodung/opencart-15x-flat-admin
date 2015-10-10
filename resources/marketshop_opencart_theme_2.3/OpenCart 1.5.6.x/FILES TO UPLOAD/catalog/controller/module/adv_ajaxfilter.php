<?php
class ControllerModuleAdvajaxfilter extends Controller {
	private $k = 1;

	protected function index($setting) {
		$this->language->load('module/adv_ajaxfilter');

		$this->data['text_tax'] = $this->language->get('text_tax');
		$this->data['button_cart'] = $this->language->get('button_cart');
		$this->data['button_wishlist'] = $this->language->get('button_wishlist');
		$this->data['button_compare'] = $this->language->get('button_compare');
		$this->data['text_price_range'] = $this->language->get('text_price_range');
		$this->data['text_manufacturers'] = $this->language->get('text_manufacturers');
		$this->data['text_tags'] = $this->language->get('text_tags');
		$this->data['text_categories'] = $this->language->get('text_categories');
		$this->data['text_attributes'] = $this->language->get('text_attributes');
		$this->data['text_all'] = $this->language->get('text_all');
		$this->data['clear_filter'] = $this->language->get('clear_filter');
		$this->data['text_instock'] = $this->language->get('text_instock');

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['pds_sku'] = $this->language->get('pds_sku');
		$this->data['pds_upc'] = $this->language->get('pds_upc');
		$this->data['pds_location'] = $this->language->get('pds_location');
		$this->data['pds_model'] = $this->language->get('pds_model');
		$this->data['pds_brand'] = $this->language->get('pds_brand');
		$this->data['pds_stock'] = $this->language->get('pds_stock');
		$this->data['symbol_right'] = $this->currency->getSymbolRight();
		$this->data['symbol_left'] = $this->currency->getSymbolLeft();

		$this->data['setting'] = $setting;

		if(VERSION == '1.5.0') {
			$adv_ajaxfilter_setting = unserialize($this->config->get('adv_ajaxfilter_setting'));
		} else {
			$adv_ajaxfilter_setting = $this->config->get('adv_ajaxfilter_setting');
		}

		$cat_id = false;
		$this->data['path'] = "";
		if(isset($this->request->get['path'])) {
			$this->data['path'] = $this->request->get['path'];
			$parts = explode('_', (string)$this->request->get['path']);
			$cat_id = array_pop($parts);
		}

		$man_id = false;
		if(isset($this->request->get['manufacturer_id'])) {
			$man_id = $this->request->get['manufacturer_id'];
			$data = array(
				'filter_manufacturer_id' => $this->request->get['manufacturer_id']
			);
		} else {
			$data = array(
				'filter_category_id' => $cat_id,
				'filter_sub_category' => false
			);
		}

		$this->load->model('catalog/product');
		$product_total = $this->model_catalog_product->getTotalProducts($data);
		if($product_total < 2) {
			return;
		}

		$this->data['category_id'] = $cat_id;

		$data = array('category_id' => $cat_id, 'manufacturer_id' => $man_id);

		$this->load->model('module/adv_ajaxfilter');
		$this->load->model('tool/image');

		$this->data['manufacturers'] = false;
		if(isset($this->request->get['manufacturer_id'])) {
			$this->data['manufacturer_id'] = $this->request->get['manufacturer_id'];
		} else {
			if($adv_ajaxfilter_setting['display_manufacturer'] != 'none') {
				$this->data['manufacturers'] = $this->model_module_adv_ajaxfilter->getManufacturers($data);
				$this->data['display_manufacturer'] = $adv_ajaxfilter_setting['display_manufacturer'];
				$this->data['expanded_manufacturer'] = isset($adv_ajaxfilter_setting['expanded_manufacturer']) ? 1 : 0;
                foreach($this->data['manufacturers'] as $key => $manufacturer) {
                    $this->data['manufacturers'][$key]['image'] = $this->model_tool_image->resize($manufacturer['image'], 50, 50);
                }
			}
		}
		$this->data['options'] = $this->model_module_adv_ajaxfilter->getOptions($data);
		foreach($this->data['options'] as $i => $option) {
			if(!isset($adv_ajaxfilter_setting['display_option_' . $option['option_id']])) {
				$adv_ajaxfilter_setting['display_option_' . $option['option_id']] = 'none';
			}
			$display_option = $adv_ajaxfilter_setting['display_option_' . $option['option_id']];
			if($display_option != 'none') {
				$this->data['options'][$i]['display'] = $display_option;
				$this->data['options'][$i]['expanded'] = isset($adv_ajaxfilter_setting['expanded_option_' . $option['option_id']]) ? 1 : 0;
				foreach($this->data['options'][$i]['option_values'] as $j => $option_value) {
					$this->data['options'][$i]['option_values'][$j]['thumb'] = $this->model_tool_image->resize($this->data['options'][$i]['option_values'][$j]['image'], 50, 50);
				}
			} else {
				unset($this->data['options'][$i]);
			}
		}
		$this->data['tags'] = array();
		$version = array_map("intVal", explode(".", VERSION));
		if($version[2] < 4 && $adv_ajaxfilter_setting['display_tags'] != 'none') {
			$this->data['tags'] = $this->model_module_adv_ajaxfilter->getTags($data);
			$this->data['expanded_tags'] = isset($adv_ajaxfilter_setting['expanded_tags']) ? 1 : 0;
		}

		$this->data['categories'] = false;
		if($adv_ajaxfilter_setting['display_categories'] != 'none') {
            $this->data['display_categories'] = $adv_ajaxfilter_setting['display_categories'];
			$this->data['categories'] = $this->model_module_adv_ajaxfilter->getSubCategories($data);
			$this->data['expanded_categories'] = isset($adv_ajaxfilter_setting['expanded_categories']) ? 1 : 0;
		}

		$this->data['attributes'] = $this->model_module_adv_ajaxfilter->getAttributes($data);

		foreach($this->data['attributes'] as $j => $attr_group) {
			foreach($attr_group['attribute_values'] as $attr_id => $attr) {
				if(!isset($adv_ajaxfilter_setting['display_attribute_' . $attr_id])) {
					$adv_ajaxfilter_setting['display_attribute_' . $attr_id] = 'none';
				}
				$display_attribute = $adv_ajaxfilter_setting['display_attribute_' . $attr_id];
				if($display_attribute != 'none') {
					if($display_attribute == 'slider') {
						$values = $this->data['attributes'][$j]['attribute_values'][$attr_id]['values'];
						$first = $values[0];
						$this->data['attributes'][$j]['attribute_values'][$attr_id]['suffix'] = preg_replace("/^-?[0-9 .,]*/", '', $first);

						$values = array_map('floatval', $values);
						$values = array_unique($values);
						sort($values);
						$this->data['attributes'][$j]['attribute_values'][$attr_id]['values'] = $values;
					}
					$this->data['attributes'][$j]['attribute_values'][$attr_id]['display'] = $display_attribute;
					$this->data['attributes'][$j]['attribute_values'][$attr_id]['expanded'] = isset($adv_ajaxfilter_setting['expanded_attribute_' . $attr_id]) ? 1 : 0;
				} else {
					unset($this->data['attributes'][$j]['attribute_values'][$attr_id]);
					if(!$this->data['attributes'][$j]['attribute_values']) {
						unset($this->data['attributes'][$j]);
					}
				}
			}
		}

		$this->data['filter_groups'] = array();
		$this->load->model('catalog/category');

		if(version_compare(VERSION, "1.5.5") >= 0) {
			$fltr_grps = $this->model_catalog_category->getCategoryFilters($cat_id);
            $this->data['display_filters'] = $adv_ajaxfilter_setting['display_filters'];
            $this->data['expanded_filters'] = isset($adv_ajaxfilter_setting['expanded_filters']);

			if ($fltr_grps) {
				foreach ($fltr_grps as $fltr_grp) {
					$filter_data = array();

					foreach ($fltr_grp['filter'] as $filter) {
						$data = array(
							'filter_category_id' => $cat_id,
							'filter_filter'      => $filter['filter_id']
						);

						$filter_data[] = array(
							'filter_id' => $filter['filter_id'],
							'name'      => $filter['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($data) . ')' : '')
						);
					}

					$this->data['filter_groups'][] = array(
						'filter_group_id' => $fltr_grp['filter_group_id'],
						'name'            => $fltr_grp['name'],
						'filter'          => $filter_data
					);
				}
			}
		}

		$this->data['price_slider'] = $adv_ajaxfilter_setting['price_slider'];
		$this->data['attr_group'] = $adv_ajaxfilter_setting['attr_group'];

		$this->data['instock_checked'] = isset($adv_ajaxfilter_setting['instock_checked']) ? 1 : 0;
		$this->data['instock_visible'] = isset($adv_ajaxfilter_setting['instock_visible']) ? 1 : 0;

		if($this->data['options'] || $this->data['manufacturers'] || $this->data['attributes'] || $this->data['price_slider']) {
			$this->document->addScript('catalog/view/javascript/jquery/jquery.total-storage.min.js');
			$this->document->addScript('catalog/view/javascript/jquery.plugins.adv.js');
			$this->document->addScript('catalog/view/javascript/adv_ajaxfilter.min.js');
		}

        $adv_ajaxfilter_setting['adv_ajaxfilter_afterload'] ="";
		$this->data['adv_ajaxfilter_container'] = $adv_ajaxfilter_setting['adv_ajaxfilter_container'];
		$this->data['adv_ajaxfilter_afterload'] = html_entity_decode($adv_ajaxfilter_setting['adv_ajaxfilter_afterload'], ENT_QUOTES, 'UTF-8');
		
		if(isset($this->request->get['route'])) {
			$this->data['old_route'] = $this->request->get['route'];
		}
		else {
			$this->data['old_route'] ="";
		}
		
		if(isset($this->request->get['search'])) {
            $this->data['search'] = $this->request->get['search'];
		}
		else {
            $this->data['search'] ="";
		}

		$this->data['route'] = '';
		if(isset($this->request->get['route'])){
			$this->data['route'] = $this->request->get['route'];
		} 
		
		$this->data['url']   = $this->url->link('product/adv_ajaxfilter', '');

		if(file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/adv_ajaxfilter.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/adv_ajaxfilter.tpl';
		} else {
			$this->template = 'default/template/module/adv_ajaxfilter.tpl';
		}
		
		$this->render();
	}

	public function getProducts() {
		$this->language->load('module/adv_ajaxfilter');

		if(VERSION == '1.5.0') {
			$adv_ajaxfilter_setting = unserialize($this->config->get('adv_ajaxfilter_setting'));
		} else {
			$adv_ajaxfilter_setting = $this->config->get('adv_ajaxfilter_setting');
		}


		if((float)$adv_ajaxfilter_setting['tax'] > 0) {
			$this->k = 1 + (float)$adv_ajaxfilter_setting['tax'] / 100;
		}

		$page = 1;
		if(isset($this->request->post['page'])) {
			$page = (int)$this->request->post['page'];
		}

		if(isset($this->request->post['sort'])) {
			$sort = $this->request->post['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if(isset($this->request->post['order'])) {
			$order = $this->request->post['order'];
		} else {
			$order = 'ASC';
		}

		if(isset($this->request->post['limit'])) {
			$limit = $this->request->post['limit'];
		} else {
			$limit = $this->config->get('config_catalog_limit');
		}

		$this->load->model('module/adv_ajaxfilter');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');

		$man = false;
		if(isset($this->request->post['manufacturer'])) {
			$man = $this->trim_array_values($this->request->post['manufacturer']);
			if(!count($man)) {
				$man = false;
			}
		}
		$man_id = false;
		if(isset($this->request->post['manufacturer_id'])) {
			$man_id = $this->request->post['manufacturer_id'];
			$man = array($man_id);
		}

		$option_value = false;
		if(isset($this->request->post['option_value'])) {
			$option_value = $this->trim_array_values($this->request->post['option_value']);
			if(!count($option_value)) {
				$option_value = false;
			}
		}

		$attr_value = array();
		if(isset($this->request->post['attribute_value'])) {
			$attr_value = $this->trim_array_values($this->request->post['attribute_value']);
			if(!count($attr_value)) {
				$attr_value = array();
			}
		}

		$instock = false;
		if(isset($this->request->post['instock'])) {
			$instock = true;
		}

		$tags = false;
		if(isset($this->request->post['tags'])) {
			$tags = $this->trim_array_values($this->request->post['tags']);
			if(!count($tags)) {
				$tags = false;
			}
		}

		$cats = false;
		if(isset($this->request->post['categories'])) {
			$cats = $this->trim_array_values($this->request->post['categories']);
			if(!count($cats)) {
				$cats = false;
			}
		}

		$cat_id = 0;
		if(isset($this->request->post['category_id'])) {
			$cat_id = $this->request->post['category_id'];
		}
		if(!$cats && $cat_id) {
			$cats = array($cat_id);
		}

		$attr_slider = isset($this->request->post['attr_slider']) ? $this->request->post['attr_slider'] : false;

		$filter = false;
		if(isset($this->request->post['filter'])) {
			$filter = $this->trim_array_values($this->request->post['filter']);
			if(!count($filter)) {
				$filter = false;
			}
		}

		$data = array(
			'instock' => $instock,
			'option_value' => $option_value,
			'manufacturer' => $man,
			'attribute_value' => $attr_value,
			'tags' => $tags,
			'categories' => $cats,
			'attr_slider' => $attr_slider,
			'filter' => $filter,
			'min_price' => $this->request->post['min_price'] / $this->k,
			'max_price' => $this->request->post['max_price'] / $this->k,
			'start' => ($page - 1) * $limit,
			'limit' => $limit,
			'sort' => $sort,
			'order' => $order
		);

		if(isset($this->request->post['manufacturer_id']) || ($adv_ajaxfilter_setting['display_manufacturer'] == 'none')) {
			$totals_mans = false;
		} else {
			$totals_mans = $this->model_module_adv_ajaxfilter->getTotalManufacturers($data);
		}

		$totals_options = $this->model_module_adv_ajaxfilter->getTotalOptions($data);

		$totals_atrs = $this->model_module_adv_ajaxfilter->getTotalAttributes($data);
		foreach($attr_value as $attr_id => $values) {
			foreach($totals_atrs as $i => $attr) {
				if($attr['id'] == $attr_id) {
					unset($totals_atrs[$i]);
				}
			}

			$temp_data = $data;
			unset($temp_data['attribute_value'][$attr_id]);
			foreach($this->model_module_adv_ajaxfilter->getTotalAttributes($temp_data) as $attr){
				if($attr['id'] == $attr_id) {
					$totals_atrs[] = $attr;
				}
			}
		}

		$version = array_map("intVal", explode(".", VERSION));
		if($version[2] >= 4) {
			$totals_tags = array();
		} else {
			$totals_tags = $this->model_module_adv_ajaxfilter->getTotalTags($data);
		}
		$totals_cats = $this->model_module_adv_ajaxfilter->getTotalCategories($data, $cat_id);

		$results = $this->model_module_adv_ajaxfilter->getProducts($data);

		$min_price = false;
		$max_price = false;

		if(isset($this->request->post['getPriceLimits']) && $this->request->post['getPriceLimits']) {
			$priceLimits = $this->model_module_adv_ajaxfilter->getPriceLimits(array('category_id' => $cat_id, 'manufacturer_id' => $man_id));
			$min_price = $priceLimits['min_price'];
			$max_price = $priceLimits['max_price'];
		}

		$this->request->get['path'] = isset($this->request->post['path']) ? $this->request->post['path'] : '';

		$product_total = $this->model_module_adv_ajaxfilter->getTotalProducts($data);

		$pagination = new Pagination();
		$pagination->total = $product_total;
		$pagination->page = $page;
		$pagination->limit = $limit;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&page={page}');


		$min_price = $this->currency->convert($min_price * $this->k, $this->config->get('config_currency'), $this->currency->getCode());
		$max_price = $this->currency->convert($max_price * $this->k, $this->config->get('config_currency'), $this->currency->getCode());


		$result_html = $this->getProductsTmpl($results, $product_total);

		$json = json_encode(array('result_html' => $result_html, 'min_price' => $min_price, 'max_price' => $max_price, 'pagination' => $pagination->render(),
								 'totals_data' => array('manufacturers' => $totals_mans,
														'options' => $totals_options,
														'attributes' => $totals_atrs,
														'categories' => $totals_cats,
														'tags' => $totals_tags)));
		$this->response->setOutput($json);
	}

	private function getProductsTmpl($results, $product_total) {
		$this->language->load('product/category');
		$this->data['text_refine'] = $this->language->get('text_refine');
		$this->data['text_empty'] = $this->language->get('text_empty');
		$this->data['text_quantity'] = $this->language->get('text_quantity');
		$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$this->data['text_model'] = $this->language->get('text_model');
		$this->data['text_price'] = $this->language->get('text_price');
		$this->data['text_tax'] = $this->language->get('text_tax');
		$this->data['text_points'] = $this->language->get('text_points');
		$this->data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
		$this->data['text_display'] = $this->language->get('text_display');
		$this->data['text_list'] = $this->language->get('text_list');
		$this->data['text_grid'] = $this->language->get('text_grid');
		$this->data['text_sort'] = $this->language->get('text_sort');
		$this->data['text_limit'] = $this->language->get('text_limit');

		$this->data['button_cart'] = $this->language->get('button_cart');
		$this->data['button_wishlist'] = $this->language->get('button_wishlist');
		$this->data['button_compare'] = $this->language->get('button_compare');
		$this->data['button_continue'] = $this->language->get('button_continue');

		$this->data['products'] = array();

		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			} else {
				$image = false;
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}

			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}

			if ($this->config->get('config_tax')) {
				$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
			} else {
				$tax = false;
			}

			if ($this->config->get('config_review_status')) {
				$rating = (int)$result['rating'];
			} else {
				$rating = false;
			}

			$this->data['products'][] = array(
				'product_id'  => $result['product_id'],
				'thumb'       => $image,
				'name'        => $result['name'],
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
				'price'       => $price,
				'special'     => $special,
				'tax'         => $tax,
				'rating'      => $result['rating'],
				'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id']),
				'saving' => $result['price'] == 0 ? 100 : round((($result['price'] - $result['special'])/$result['price'])*100, 0)
			);
		}

		if(file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/adv_ajaxfilter_products.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/adv_ajaxfilter_products.tpl';
		} else {
			$this->template = 'default/template/module/adv_ajaxfilter_products.tpl';
		}
		return $this->render();
	}

    private function trim_array_values(array $array) {
        foreach($array as $key => $value) {
            if(is_array($value)) {
                $array[$key] = $this->trim_array_values($value);
                if(!count($array[$key])) {
                    unset($array[$key]);
                }
            } elseif(is_string($value)) {
                $value = trim($value);
                if(!$value) {
                    unset($array[$key]);
                }
            }
        }
        return $array;
    }
}

?>