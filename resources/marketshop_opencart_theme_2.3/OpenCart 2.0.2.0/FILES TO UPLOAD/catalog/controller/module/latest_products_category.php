<?php  
class ControllerModuleLatestproductscategory extends Controller {
	public function index($setting) {
	static $module = 0;
		$this->load->language('module/latest_products_category');
		
		$this->document->addStyle('catalog/view/theme/marketshop/stylesheet/owl.carousel.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');
		
    	$data['heading_title'] = $this->language->get('heading_title');
		$data['viewall'] = $this->language->get('viewall');
		$data['button_cart'] = $this->language->get('button_cart');
		
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
				
		if (isset($this->request->get['path'])) {
			$pathparts = explode('_', (string)$this->request->get['path']);		
		
			$cat_id = array_pop($pathparts);
		} else {
			$cat_id = $setting['category_id'];
		}
		
		$this->load->model('catalog/category');	
		
		$category_info = $this->model_catalog_category->getCategory($cat_id);
		
		$data['category_name'] = $category_info['name'];
		$data['category_url'] = $this->url->link('product/category', 'path=' . $category_info['category_id']);
		
		if ($setting['pmin']) {
		 if ($setting['pmin'] > 1) {
		  $data['pmin'] = $setting['pmin'] - 1;
		 } else {
		  $data['pmin'] = 0;
		 }
		} else {
		$data['pmin'] = 0;
		}
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');
		
		$data['subcats'] = array();
		
		$subcats = $this->model_catalog_category->getCategories($cat_id);
		
		if ($setting['subcats'] != 'ctabs') {
		  $subcats = false;
		}
		
		if ($subcats) {
		
		 foreach ($subcats as $subcat) {
		  $subcat_info = $this->model_catalog_category->getCategory($subcat['category_id']);
		  
		  $subcat_name = $subcat_info['name'];
		  
		  $subproducts = array();
		  
		  $subdata = array(
				'filter_category_id' => $subcat['category_id'],
                'sort'  => 'p.date_added',				
				'order' => 'DESC',
			    'start' => 0,
				'limit' => $setting['limit']
			);
		  
		  $subresults = $this->model_catalog_product->getProducts($subdata);
		  
		  foreach ($subresults as $subresult) {
				if ($subresult['image']) {
					$image = $this->model_tool_image->resize($subresult['image'], $setting['width'], $setting['height']);
				} else {
					$image = false;
				}
								
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($subresult['price'], $subresult['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
				
				if ((float)$subresult['special']) {
					$special = $this->currency->format($this->tax->calculate($subresult['special'], $subresult['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}	
				
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$subresult['special'] ? $subresult['special'] : $subresult['price']);
				} else {
					$tax = false;
				}				
				
				if ($this->config->get('config_review_status')) {
					$rating = (int)$subresult['rating'];
				} else {
					$rating = false;
				}
								
				$subproducts[] = array(
					'product_id'  => $subresult['product_id'],
					'thumb'       => $image,
					'name'        => $subresult['name'],
					'description' => substr(strip_tags(html_entity_decode($subresult['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $subresult['rating'],
					'href'        => $this->url->link('product/product' . '&product_id=' . $subresult['product_id']),
					'saving' => $subresult['price'] == 0 ? 100 : round((($subresult['price'] - $subresult['special'])/$subresult['price'])*100, 0)
				);
			}
		    $data['subcats'][] = array(
			        'name'              => $subcat_name,
					'id'                => $subcat['category_id'],
					'subproducts'       => $subproducts
			);
		 }
		 
		}
		
		$data['products'] = array();
		
		if ($setting['subcats'] == 'filtering') {
			$filter_data = array(
				'filter_category_id' => $cat_id,
				'filter_sub_category' => 1,
                'sort'  => 'p.date_added',				
				'order' => 'DESC',
			    'start' => 0,
				'limit' => $setting['limit']
			);
			} else {
			$filter_data = array(
				'filter_category_id' => $cat_id,
                'sort'  => 'p.date_added',				
				'order' => 'DESC',
			    'start' => 0,
				'limit' => $setting['limit']
			);
			}
					
			$product_total = $this->model_catalog_product->getTotalProducts($filter_data); 
			
			$results = $this->model_catalog_product->getProducts($filter_data);
			
			foreach ($results as $result) {
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
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
					'saving' => $result['price'] == 0 ? 100 : round((($result['price'] - $result['special'])/$result['price'])*100, 0)
				);
			}
			
		$data['module'] = $module++; 
			
		if ($data['products']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/latest_products_category.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/latest_products_category.tpl', $data);
			} else {
				return $this->load->view('default/template/module/latest_products_category.tpl', $data);
			}
		}
  	}	
}