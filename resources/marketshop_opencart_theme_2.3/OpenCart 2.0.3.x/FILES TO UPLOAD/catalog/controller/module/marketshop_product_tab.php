<?php
class ControllerModuleMarketshopProductTab extends Controller {
	public function index($setting) {
		static $module = 0;
		$this->load->language('module/marketshop_product_tab');
		
		$this->document->addStyle('catalog/view/theme/marketshop/stylesheet/owl.carousel.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		
		$data['tab_latest'] = $this->language->get('tab_latest');
      	$data['tab_featured'] = $this->language->get('tab_featured');
      	$data['tab_bestseller'] = $this->language->get('tab_bestseller');
      	$data['tab_special'] = $this->language->get('tab_special');
		
		$data['button_cart'] = $this->language->get('button_cart');
		
		if(isset($setting['featured_products_status']) && $setting['featured_products_status'] == 1){
			$data['featured_products_status'] = 1;
		}else{
			$data['featured_products_status'] = '';
		}
			
		if(isset($setting['latest_products_status']) && $setting['latest_products_status'] == 1){
			$data['latest_products_status'] = 1;
		}else{
			$data['latest_products_status'] = '';
		}
			
		if(isset($setting['bestseller_products_status']) && $setting['bestseller_products_status'] == 1){
			$data['bestseller_products_status'] = 1;
		}else{
			$data['bestseller_products_status'] = '';
		}
			
		if(isset($setting['special_products_status']) && $setting['special_products_status'] == 1){
			$data['special_products_status'] = 1;
		}else{
			$data['special_products_status'] = '';
		}

		$this->load->model('catalog/product');

		$this->load->model('tool/image');
		
		
		//Latest Products
		
		$data['latest_products'] = array();
		
		$latest_results = $this->model_catalog_product->getLatestProducts($setting['limit']);

		foreach ($latest_results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
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
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
			
			$data['latest_products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				'saving' => $result['price'] == 0 ? 100 : round((($result['price'] - $result['special'])/$result['price'])*100, 0)
			);
		}
		
		//Specials product

		$data['special_products'] = array();

			$special_data = array(
			'sort'  => 'pd.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => $setting['limit']
		);


		
		$special_results = $this->model_catalog_product->getProductSpecials($special_data);

		foreach ($special_results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
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
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
			
			$data['special_products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				'saving' => $result['price'] == 0 ? 100 : round((($result['price'] - $result['special'])/$result['price'])*100, 0)
			);
		}

		//BestSeller
		$data['bestseller_products'] = array();

		$bestseller_results = $this->model_catalog_product->getBestSellerProducts($setting['limit']);
		
		foreach ($bestseller_results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
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
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
							
			$data['bestseller_products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				'saving' => $result['price'] == 0 ? 100 : round((($result['price'] - $result['special'])/$result['price'])*100, 0)
			);
		}
		
		
		
		//Featured

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		$products = array_slice($setting['product'], 0, (int)$setting['limit']);

		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);

			if ($product_info) {
				if ($product_info['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$product_info['special']) {
					$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $product_info['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $product_info['product_id'],
					'thumb'       => $image,
					'name'        => $product_info['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
					'saving' => $product_info['price'] == 0 ? 100 : round((($product_info['price'] - $product_info['special'])/$product_info['price'])*100, 0)
				);
			}
		}
		
		
		
		$data['module'] = $module++;

		//if ($data['products']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/marketshop_product_tab.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/marketshop_product_tab.tpl', $data);
			} else {
				return $this->load->view('default/template/module/marketshop_product_tab.tpl', $data);
			//}
		}
	}
}