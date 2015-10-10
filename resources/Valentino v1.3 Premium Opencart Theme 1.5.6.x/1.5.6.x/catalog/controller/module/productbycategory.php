<?php
class ControllerModuleProductByCategory extends Controller {
	protected function index($setting) {
		
		$this->language->load('module/productbycategory');
		
      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->data['button_wishlist'] = $this->language->get('button_wishlist');
		
		$this->data['button_compare'] = $this->language->get('button_compare');
		
		$this->data['quick_view_text'] = $this->language->get('quick_view_text');
		
		$this->data['text_sale'] = $this->language->get('text_sale');
		
		$this->data['viewall'] =  $this->language->get('viewall');
		
		$this->data['display'] = $setting['display'];
		$this->data['subcats'] = $setting['subcats'];
			
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');

		$category_id=$setting['category_id'];
		$this->data['products'] = array();
		$this->data['ctabs']=array();
		
		$category_info = $this->model_catalog_category->getCategory($category_id);
		$category_info['href']=$this->url->link('product/category', 'path=' . $category_info['category_id']);

		$this->data['category_info'] = $category_info;
		
		if($setting['subcats']=="none"){
			$this->getproducts($setting,$category_id);
		}else if($setting['subcats']=="filtering"){
			$this->getproducts($setting,$category_id);
			if(isset($setting['subcatsselected']) && !empty($setting['subcatsselected'])){
				foreach ($setting['subcatsselected'] as $key => $valueSubcat) {
					$this->getproducts($setting,$valueSubcat);
				}
			}
		}else if($setting['subcats']=="ctabs"){
			
			$data = array(
				'filter_category_id'  => $category_id,
			);
			$product_total = $this->model_catalog_product->getTotalProducts($data);
			if($product_total){
				$this->data['ctabs'][]=array(
							'name'=>$category_info['name'],
							'category_id'=>$category_info['category_id']
						);
				$this->getproducts($setting,$category_id);
			}

			if(isset($setting['subcatsselected']) && !empty($setting['subcatsselected'])){
				foreach ($setting['subcatsselected'] as $key => $valueSubcat) {
					$data = array(
						'filter_category_id'  => $valueSubcat,
					);
					$product_total = $this->model_catalog_product->getTotalProducts($data);
					if($product_total){
						$category_info_tabs = $this->model_catalog_category->getCategory($valueSubcat);
						$this->data['ctabs'][]=array(
							'name'=>$category_info_tabs['name'],
							'category_id'=>$category_info_tabs['category_id']
						);
						$this->getproducts($setting,$valueSubcat);
					}
				}
			}
		}

		if($setting['subcats']=="ctabs"){
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/productbycategorytabs.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/module/productbycategorytabs.tpl';
				} else {
					$this->template = 'default/template/module/productbycategory.tpl';
				}
		}else{
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/productbycategory.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/module/productbycategory.tpl';
			} else {
				$this->template = 'default/template/module/productbycategory.tpl';
			}
		}
		$this->render();
	}

	function getproducts($setting,$category_id){
		$data = array(
			'filter_category_id' => $category_id,
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);

		$results = $this->model_catalog_product->getProducts($data);
		
		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
			} else {
				$image = false;
			}
			
			//this for swap image
				
				$images = $this->model_catalog_product->getProductImages($result['product_id']);

            if(isset($images[0]['image']) && !empty($images[0]['image'])){
                  $images =$images[0]['image'];
               } 
			   
				//
						
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
			if($setting['subcats']=="ctabs"){
				$this->data['products'][$category_id][] = array(
					'product_id' => $result['product_id'],
					'thumb'   	 => $image,
					'name'    	 => $result['name'],
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
					// for swap image
					'thumb_swap'  => $this->model_tool_image->resize($images, $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height')), 
					//
					// for saving percentage
					'saving'	=> round((($result['price'] - $result['special'])/$result['price'])*100, 0),
					//
				);
			}else{
				$this->data['products'][] = array(
					'product_id' => $result['product_id'],
					'thumb'   	 => $image,
					'name'    	 => $result['name'],
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
					// for swap image
					'thumb_swap'  => $this->model_tool_image->resize($images, $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height')), 
					//
					// for saving percentage
					'saving'	=> round((($result['price'] - $result['special'])/$result['price'])*100, 0),
					//
				);
			}

		}	
	}
}
?>