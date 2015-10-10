<?php
class ControllerModuleAdvajaxfilter extends Controller {
	private $k = 1;

	public function index($setting)
    {
        $this->load->language('module/adv_ajaxfilter');

        $data['text_tax'] = $this->language->get('text_tax');
        $data['button_cart'] = $this->language->get('button_cart');
        $data['button_wishlist'] = $this->language->get('button_wishlist');
        $data['button_compare'] = $this->language->get('button_compare');
        $data['text_price_range'] = $this->language->get('text_price_range');
        $data['text_manufacturers'] = $this->language->get('text_manufacturers');
        $data['text_categories'] = $this->language->get('text_categories');
        $data['text_attributes'] = $this->language->get('text_attributes');
        $data['text_all'] = $this->language->get('text_all');
        $data['clear_filter'] = $this->language->get('clear_filter');
        $data['text_instock'] = $this->language->get('text_instock');

        $data['heading_title'] = $this->language->get('heading_title');

        $data['pds_sku'] = $this->language->get('pds_sku');
        $data['pds_upc'] = $this->language->get('pds_upc');
        $data['pds_location'] = $this->language->get('pds_location');
        $data['pds_model'] = $this->language->get('pds_model');
        $data['pds_brand'] = $this->language->get('pds_brand');
        $data['pds_stock'] = $this->language->get('pds_stock');
        $data['symbol_right'] = $this->currency->getSymbolRight();
        $data['symbol_left'] = $this->currency->getSymbolLeft();

        $this->load->model('setting/setting');
        $advsettings = $this->model_setting_setting->getSetting('adv_ajaxfilter');
        if (isset($advsettings['adv_ajaxfilter_module'])) {
            $data['setting'] = $advsettings['adv_ajaxfilter_module'][0];
        }
        else{
            $data['setting'] = array();
        }

		$adv_ajaxfilter_setting = $this->config->get('adv_ajaxfilter_setting');


		$cat_id = false;
		$data['path'] = "";
		if(isset($this->request->get['path'])) {
			$data['path'] = $this->request->get['path'];
			$parts = explode('_', (string)$this->request->get['path']);
			$cat_id = array_pop($parts);
		}

		$man_id = false;
		if(isset($this->request->get['manufacturer_id'])) {
			$man_id = $this->request->get['manufacturer_id'];
			$_data = array(
				'filter_manufacturer_id' => $this->request->get['manufacturer_id']
			);
		} else {
            $_data = array(
				'filter_category_id' => $cat_id,
				'filter_sub_category' => false
			);
		}

		$this->load->model('catalog/product');
		$product_total = $this->model_catalog_product->getTotalProducts($_data);
		if($product_total < 2) {
			return;
		}

        $data['category_id'] = $cat_id;

        $_data = array('category_id' => $cat_id, 'manufacturer_id' => $man_id);

		$this->load->model('module/adv_ajaxfilter');
		$this->load->model('tool/image');

		$data['manufacturers'] = false;
		if(isset($this->request->get['manufacturer_id'])) {
			$data['manufacturer_id'] = $this->request->get['manufacturer_id'];
		} else {
			if($adv_ajaxfilter_setting['display_manufacturer'] != 'none') {
				$data['manufacturers'] = $this->model_module_adv_ajaxfilter->getManufacturers($_data);
				$data['display_manufacturer'] = $adv_ajaxfilter_setting['display_manufacturer'];
				$data['expanded_manufacturer'] = isset($adv_ajaxfilter_setting['expanded_manufacturer']) ? 1 : 0;
                foreach($data['manufacturers'] as $key => $manufacturer) {
                    $data['manufacturers'][$key]['image'] = $this->model_tool_image->resize($manufacturer['image'], 50, 50);
                }
			}
		}
		$data['options'] = $this->model_module_adv_ajaxfilter->getOptions($_data);
		foreach($data['options'] as $i => $option) {
			if(!isset($adv_ajaxfilter_setting['display_option_' . $option['option_id']])) {
				$adv_ajaxfilter_setting['display_option_' . $option['option_id']] = 'none';
			}
			$display_option = $adv_ajaxfilter_setting['display_option_' . $option['option_id']];
			if($display_option != 'none') {
				$data['options'][$i]['display'] = $display_option;
				$data['options'][$i]['expanded'] = isset($adv_ajaxfilter_setting['expanded_option_' . $option['option_id']]) ? 1 : 0;
				foreach($data['options'][$i]['option_values'] as $j => $option_value) {
					$data['options'][$i]['option_values'][$j]['thumb'] = $this->model_tool_image->resize($data['options'][$i]['option_values'][$j]['image'], 50, 50);
				}
			} else {
				unset($data['options'][$i]);
			}
		}

		$data['categories'] = false;
		if($adv_ajaxfilter_setting['display_categories'] != 'none') {
            $data['display_categories'] = $adv_ajaxfilter_setting['display_categories'];
			$data['categories'] = $this->model_module_adv_ajaxfilter->getSubCategories($_data);
			$data['expanded_categories'] = isset($adv_ajaxfilter_setting['expanded_categories']) ? 1 : 0;
		}

		$data['attributes'] = $this->model_module_adv_ajaxfilter->getAttributes($_data);

		foreach($data['attributes'] as $j => $attr_group) {
			foreach($attr_group['attribute_values'] as $attr_id => $attr) {
				if(!isset($adv_ajaxfilter_setting['display_attribute_' . $attr_id])) {
					$adv_ajaxfilter_setting['display_attribute_' . $attr_id] = 'none';
				}
				$display_attribute = $adv_ajaxfilter_setting['display_attribute_' . $attr_id];
				if($display_attribute != 'none') {
					if($display_attribute == 'slider') {
						$values = $data['attributes'][$j]['attribute_values'][$attr_id]['values'];
						$first = $values[0];
						$data['attributes'][$j]['attribute_values'][$attr_id]['suffix'] = preg_replace("/^-?[0-9 .,]*/", '', $first);

						$values = array_map('floatval', $values);
						$values = array_unique($values);
						sort($values);
						$data['attributes'][$j]['attribute_values'][$attr_id]['values'] = $values;
					}
					$data['attributes'][$j]['attribute_values'][$attr_id]['display'] = $display_attribute;
					$data['attributes'][$j]['attribute_values'][$attr_id]['expanded'] = isset($adv_ajaxfilter_setting['expanded_attribute_' . $attr_id]) ? 1 : 0;
				} else {
					unset($data['attributes'][$j]['attribute_values'][$attr_id]);
					if(!$data['attributes'][$j]['attribute_values']) {
						unset($data['attributes'][$j]);
					}
				}
			}
		}

		$data['filter_groups'] = array();
		$this->load->model('catalog/category');

        $fltr_grps = $this->model_catalog_category->getCategoryFilters($cat_id);
        $data['display_filters'] = $adv_ajaxfilter_setting['display_filters'];
        $data['expanded_filters'] = isset($adv_ajaxfilter_setting['expanded_filters']) ? 1 : 0;

        if ($fltr_grps) {
            foreach ($fltr_grps as $fltr_grp) {
                $filter_data = array();

                foreach ($fltr_grp['filter'] as $filter) {
                    $_data = array(
                        'filter_category_id' => $cat_id,
                        'filter_filter'      => $filter['filter_id']
                    );

                    $filter_data[] = array(
                        'filter_id' => $filter['filter_id'],
                        'name'      => $filter['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($_data) . ')' : '')
                    );
                }

                $data['filter_groups'][] = array(
                    'filter_group_id' => $fltr_grp['filter_group_id'],
                    'name'            => $fltr_grp['name'],
                    'filter'          => $filter_data
                );
            }
        }


		$data['price_slider'] = $adv_ajaxfilter_setting['price_slider'];
		$data['attr_group'] = $adv_ajaxfilter_setting['attr_group'];

		$data['instock_checked'] = isset($adv_ajaxfilter_setting['instock_checked']) ? 1 : 0;
		$data['instock_visible'] = isset($adv_ajaxfilter_setting['instock_visible']) ? 1 : 0;

		if($data['options'] || $data['manufacturers'] || $data['attributes'] || $data['price_slider']) {
			$this->document->addScript('catalog/view/javascript/jquery-ui/jquery-ui.js');
			$this->document->addScript('catalog/view/javascript/jquery.plugins.adv.js');
			$this->document->addScript('catalog/view/javascript/adv_ajaxfilter.min.js');
			
			$this->document->addStyle('catalog/view/javascript/jquery-ui/css/jquery-ui.css');
		}

        $adv_ajaxfilter_setting['adv_ajaxfilter_afterload'] ="";
		$data['adv_ajaxfilter_container'] = $adv_ajaxfilter_setting['adv_ajaxfilter_container'];
		$data['adv_ajaxfilter_afterload'] = html_entity_decode($adv_ajaxfilter_setting['adv_ajaxfilter_afterload'], ENT_QUOTES, 'UTF-8');
		
		if(isset($this->request->get['route'])) {
			$data['old_route'] = $this->request->get['route'];
		}
		else {
			$data['old_route'] ="";
		}

        if(isset($this->request->get['search'])) {
			$data['search'] = $this->request->get['search'];
		}
		else {
			$data['search'] ="";
		}

		$data['route'] = '';
		if(isset($this->request->get['route'])){
			$data['route'] = $this->request->get['route'];
		} 
		
		$data['url']   = $this->url->link('product/adv_ajaxfilter', '');



        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/adv_ajaxfilter.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/adv_ajaxfilter.tpl', $data);
        } else {
            return $this->load->view('default/template/module/adv_ajaxfilter.tpl', $data);
        }
	}

	public function getProducts() {
		$this->load->language('module/adv_ajaxfilter');


		$adv_ajaxfilter_setting = $this->config->get('adv_ajaxfilter_setting');

		if((float)$adv_ajaxfilter_setting['tax'] > 0) {
			$this->k = 1 + (float)$adv_ajaxfilter_setting['tax'] / 100;
		}

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else if (isset($this->request->post['page'])) {
            $page = $this->request->post['page'];
        } else {
            $page = 1;
        }

        if (isset($this->request->get['limit'])) {
            $limit = $this->request->get['limit'];
        } else {
            $limit = $this->config->get('config_product_limit');
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
        $pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&page={page}');

        $pagination_result = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));


		$min_price = $this->currency->convert($min_price * $this->k, $this->config->get('config_currency'), $this->currency->getCode());
		$max_price = $this->currency->convert($max_price * $this->k, $this->config->get('config_currency'), $this->currency->getCode());


		$result_html = $this->getProductsTmpl($results, $product_total);

		$json = json_encode(array(  'result_html' => $result_html,
                                    'min_price' => $min_price,
                                    'max_price' => $max_price,
                                    'pagination' => $pagination->render(),
                                    'pagination_result' => $pagination_result,
								    'totals_data' => array('manufacturers' => $totals_mans,
														'options' => $totals_options,
														'attributes' => $totals_atrs,
														'categories' => $totals_cats)));
		$this->response->setOutput($json);
	}

	private function getProductsTmpl($results, $product_total) {
		$this->load->language('product/category');
		$data['text_refine'] = $this->language->get('text_refine');
		$data['text_empty'] = $this->language->get('text_empty');
		$data['text_quantity'] = $this->language->get('text_quantity');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_model'] = $this->language->get('text_model');
		$data['text_price'] = $this->language->get('text_price');
		$data['text_tax'] = $this->language->get('text_tax');
		$data['text_points'] = $this->language->get('text_points');
		$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
		$data['text_display'] = $this->language->get('text_display');
		$data['text_list'] = $this->language->get('text_list');
		$data['text_grid'] = $this->language->get('text_grid');
		$data['text_sort'] = $this->language->get('text_sort');
		$data['text_limit'] = $this->language->get('text_limit');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		$data['button_continue'] = $this->language->get('button_continue');

		$data['products'] = array();

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

			$data['products'][] = array(
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
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/adv_ajaxfilter_products.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/adv_ajaxfilter_products.tpl', $data);
        } else {
            return $this->load->view('default/template/module/adv_ajaxfilter_products.tpl', $data);
        }
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