<?php  
class ControllerModuleLatestproductsbrand extends Controller {
	protected function index($setting) {
	static $module = 0;
		$this->language->load('module/latest_products_brand');
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['viewall'] = $this->language->get('viewall');
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->data['button_wishlist'] = $this->language->get('button_wishlist');
		$this->data['button_compare'] = $this->language->get('button_compare');
		
		$this->document->addScript('catalog/view/javascript/jquery/tabs.js');
		
		if (isset($this->request->get['manufacturer_id'])) {
			$manu_id = $this->request->get['manufacturer_id'];							
		} else {
			$manu_id = $setting['manufacturer_id'];
		}
		
		$this->load->model('catalog/manufacturer');	
		
		$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($manu_id);
		
		$this->data['manufacturer_name'] = $manufacturer_info['name'];
		$this->data['manufacturer_url'] = $this->url->link('product/manufacturer/info', '&manufacturer_id=' . $manufacturer_info['manufacturer_id']);
				
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');
		
		$this->data['products'] = array();
		
		$data = array(
			'filter_manufacturer_id' => $manu_id,
			'sort'  => 'p.date_added',				
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);
					
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

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/latest_products_brand.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/latest_products_brand.tpl';
		} else {
			$this->template = 'default/template/module/latest_products_brand.tpl';
		}
		
		$this->render();
		
  	}
	
}
?>