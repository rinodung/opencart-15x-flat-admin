<?php 
/******************************************************
 *  Leo Opencart Theme Framework for Opencart 1.5.x
 *
 * @package   leotempcp
 * @version   3.0
 * @author    http://www.leotheme.com
 * @copyright Copyright (C) October 2013 LeoThemes.com <@emai:leotheme@gmail.com>
 *               <info@leotheme.com>.All rights reserved.
 * @license   GNU General Public License version 2
 * ******************************************************/

class PtsWidgetProducttabs extends PtsWidgetPageBuilder {

		public $name = 'producttabs';
		public $group = 'product';
		public $usemeneu = false;
		
		public static function getWidgetInfo(){
			return array('label' =>  ('Product Tabs'), 'explain' => 'Dislay Tabs: Newest, Bestseller, Special, Featured', 'group' => 'opencart'  );
		}


		public function renderForm( $args, $data ){
			$helper = $this->getFormHelper();
			$types = array();	
		 	

	 		$soption = array(
	            array(
	                'id' => 'active_on',
	                'value' => 1,
	                'label' => $this->l('Enabled')
	            ),
	            array(
	                'id' => 'active_off',
	                'value' => 0,
	                'label' => $this->l('Disabled')
	            )
	        );



			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
	                
 					 array(
	                    'type'    => 'text',
	                    'label'   => $this->l('Limit'),
	                    'name'    => 'limit',
	                    'default' => 6,
	                ),
	     			array(
	                    'type'  => 'text',
	                    'label' => $this->l('Column'),
	                    'name'  => 'column',
	                    'default'=> 4,
	                    'desc'	=> $this->l('Show In Carousel with N Column in each page')
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Items Per Page'),
	                    'name'  => 'itemsperpage',
	                    'default'=> 4,
	                    'desc'	=> $this->l('Show In Carousel, Max Products in each page')
	                ),
	                array(
	                    'type' 	  => 'switch',
	                    'label'   => $this->l( 'Enable Newest' ),
	                    'name' 	  => 'enable_newest',
	                    'values'  => $soption,
	                    'default' => "1",
	                    'desc'    => $this->l( 'Whethere to display Newest Products' )
	                ),
	                 array(
	                    'type' 	  => 'switch',
	                    'label'   => $this->l( 'Enable Featured' ),
	                    'name' 	  => 'enable_featured',
	                    'values'  => $soption,
	                    'default' => "0",
	                    'desc'    => $this->l( 'Whethere to display featured Products' )
	                ),
	                  array(
	                    'type' 	  => 'switch',
	                    'label'   => $this->l( 'Enable Bestseller' ),
	                    'name' 	  => 'enable_bestseller',
	                    'values'  => $soption,
	                    'default' => "1",
	                    'desc'    => $this->l( 'Whethere to display Bestseller Products' )
	                ),
	                   array(
	                    'type' 	  => 'switch',
	                    'label'   => $this->l( 'Enable Newest' ),
	                    'name' 	  => 'enable_special',
	                    'values'  => $soption,
	                    'default' => "1",
	                    'desc'    => $this->l( 'Whethere to display Special Products' )
	                ),

	            ),
	      		 'submit' => array(
	                'title' => $this->l('Save'),
	                'class' => 'button'
           		 )
	        );

 
		 	$default_lang = (int)$this->config->get('config_language_id');
			
			$helper->tpl_vars = array(
	                'fields_value' => $this->getConfigFieldsValues( $data  ),
	                
	                'id_language' => $default_lang
        	);  

			return  $helper->generateForm( $this->fields_form );
		}


		private function getProducts( $results, $setting ){

			$products = array();

			$themeConfig = $this->config->get('themecontrol');
			 
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
					// Image Attribute for product
					 
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
				
	 			
				
				$products[] = array(
					'product_id' => $result['product_id'],
					'thumb'   	 => $image,
					'name'    	 => $result['name'],
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'description'=> (html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')),
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
					'thumb2'     => isset($thumb2)?$thumb2:'',
				);
			}
			return $products;
		}


		private function getFeatured($option = array()){
			$products = explode(',', $this->config->get('featured_product'));
			$return = array();
			if(!empty($products)){
				$limit = (isset($option['limit']) && !empty($option['limit']))?$option['limit']: 5;
				$products = array_slice($products, 0, (int)$limit);
				foreach ($products as $product_id) {
					$product_info = $this->model_catalog_product->getProduct($product_id);
					$return[] = $product_info;
				}
			}
			return $return;
		}

		/**
		 *
		 */
		public function renderContent( $args, $setting ){ 


			$this->load->model('catalog/product'); 
			$this->load->model('tool/image');
			$this->language->load('module/pavproducttabs');

			$t = array(
				'list_type'=> '',
				'limit' => 8,
				'width'=>'200',
				'height' =>'200',
				'enable_special' => '1',
				'enable_bestseller' => '1',
				'enable_featured' => '0',
				'enable_newest' => '1',
				'mostviewed'    => 1,
				'itemsperpage'	=> 4,
				'column'		=> 4,
			);

			$products = array();
			$setting = array_merge( $t, $setting );
			$data = array(
				'sort'  => 'p.date_added',
				'order' => 'DESC',
				'start' => 0,
				'limit' => $setting['limit']
			);

			
			$tabs = array(
				'latest' 	 => array(),
				'featured'   => array( ),
				'bestseller' => array(),
				'special'   => array(),
				'mostviewed' => array()
			);	
			$setting['cols'] = $setting['column'];
			
	 		if(isset($setting['enable_featured'])){
				$tabs['featured'] = $this->getProducts( $this->getFeatured($data), $setting );
			}
			if( isset($setting['enable_newest']) ){ 
				$tabs['latest'] = $this->getProducts( $this->model_catalog_product->getProducts( $data ), $setting );
		 	}
			if( isset($setting['enable_bestseller']) ){
				$tabs['bestseller'] = $this->getProducts( $this->model_catalog_product->getBestSellerProducts( $data['limit'] ), $setting );
		 	}
			if( isset($setting['enable_special']) ){
				$tabs['special'] = $this->getProducts( $this->model_catalog_product->getProductSpecials( $data ), $setting );
			}
			if( isset($setting['mostviewed']) ){
				$data['sort'] = 'p.viewed';
				$tabs['mostviewed'] = $this->getProducts( $this->model_catalog_product->getProducts( $data ), $setting );
			}

		
			$setting['tabs'] = $tabs;

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';
			 
			$output = array('type'=>'producttabs','data' => $setting );
 
			return $output;
		}
	}
?>