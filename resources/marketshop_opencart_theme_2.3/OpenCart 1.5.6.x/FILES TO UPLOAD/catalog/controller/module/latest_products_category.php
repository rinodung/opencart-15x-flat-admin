<?php  
class ControllerModuleLatestproductscategory extends Controller {
	protected function index($setting) {
	static $module = 0;
		$this->language->load('module/latest_products_category');
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['viewall'] = $this->language->get('viewall');
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->data['button_wishlist'] = $this->language->get('button_wishlist');
		$this->data['button_compare'] = $this->language->get('button_compare');
		
		$this->document->addScript('catalog/view/javascript/jquery/tabs.js');
		
		if (isset($this->request->get['path'])) {
			$pathparts = explode('_', (string)$this->request->get['path']);		
		
			$cat_id = array_pop($pathparts);
		} else {
			$cat_id = $setting['category_id'];
		}
		
		$this->load->model('catalog/category');	
		$category_info = $this->model_catalog_category->getCategory($cat_id);
		$this->data['category_name'] = $category_info['name'];
		$this->data['category_url'] = $this->url->link('product/category', 'path=' . $category_info['category_id']);
		
		if ($setting['pmin']) {
		 if ($setting['pmin'] > 1) {
		  $this->data['pmin'] = $setting['pmin'] - 1;
		 } else {
		  $this->data['pmin'] = 0;
		 }
		} else {
		$this->data['pmin'] = 0;
		}
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');
		
		$this->data['subcats'] = array();
		
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
					$image = $this->model_tool_image->resize($subresult['image'], $setting['image_width'], $setting['image_height']);
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
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$subresult['reviews']),
					'href'        => $this->url->link('product/product' . '&product_id=' . $subresult['product_id']),
					// for saving percentage
					'saving' => $subresult['price'] == 0 ? 100 : round((($subresult['price'] - $subresult['special'])/$subresult['price'])*100, 0)
					//zzzz
				);
			}
		    $this->data['subcats'][] = array(
			        'name'              => $subcat_name,
					'id'                => $subcat['category_id'],
					'subproducts'       => $subproducts
			);
		 }
		 
		}
		
		$this->data['products'] = array();
			if ($setting['subcats'] == 'filtering') {
			$data = array(
				'filter_category_id' => $cat_id,
				'filter_sub_category' => 1,
                'sort'  => 'p.date_added',				
				'order' => 'DESC',
			    'start' => 0,
				'limit' => $setting['limit']
			);
			} else {
			$data = array(
				'filter_category_id' => $cat_id,
                'sort'  => 'p.date_added',				
				'order' => 'DESC',
			    'start' => 0,
				'limit' => $setting['limit']
			);
			}
					
			$product_total = $this->model_catalog_product->getTotalProducts($data); 
			
			$results = $this->model_catalog_product->getProducts($data);
			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
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
					'description' => substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product' . '&product_id=' . $result['product_id']),
					// for saving percentage
					'saving' => $result['price'] == 0 ? 100 : round((($result['price'] - $result['special'])/$result['price'])*100, 0)
					//
				);
			}
			
		$this->data['module'] = $module++; 

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/latest_products_category.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/latest_products_category.tpl';
		} else {
			$this->template = 'default/template/module/latest_products_category.tpl';
		}
		
		$this->render();
		
  	}
	
}
?>