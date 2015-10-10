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

class PtsWidgetFeaturedproduct extends PtsWidgetPageBuilder {

		public $name = 'featuredproduct';
		public $group = 'product';

		public static function getWidgetInfo(){
			return array('label' => ('Get products featured'), 'explain' => 'Created Product featured', 'group' => 'product'  );
		}


		public function renderForm( $args, $data ){

			$key = time();

			$helper = $this->getFormHelper();


			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
	            	array(
	                    'type'  => 'text',
	                    'label' => $this->l('Icon Awesome'),
	                    'name'  => 'icon',
	                    'default'=> 'fa fa-umbrella fa-2 ',
	                    'desc'	=> $this->l('Please enter icon from font-awesome')
	                ),
	            	 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Enter ID product featured'),
	                    'name'  => 'product_id',
	                    'default'=> '42,44,47,48',
	                    'desc'	=> 'Please enter ID products featured. Ex:42,44,47,48',
	                ),
	            	 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Column'),
	                    'name'  => 'cols',
	                    'default'=> 1,
	                    'desc'	=> '',
	                ),
	            	 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Itemsper page'),
	                    'name'  => 'itemsperpage',
	                    'default'=> 5,
	                    'desc'	=> '',
	                ),
	                 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Limit'),
	                    'name'  => 'limit',
	                    'default'=> 5,
	                    'desc'	=> '',
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Width'),
	                    'name'  => 'image_width',
	                    'default'=> 200,
	                    'desc'	=> '',
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Height'),
	                    'name'  => 'image_height',
	                    'default'=> 200,
	                    'desc'	=> '',
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Auto play'),
	                    'name'  => 'auto_play',
	                    'default'=> 3000,
	                    'desc'	=> '',
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

		public function renderContent( $args, $setting ){
			$t = array(
				'icon'	=> '',
				'product_id'   => 0,
				'image_height' => '200',
				'image_width'  => '200',
				'limit'			=> 5,
				'itemsperpage'	=> 1,
				'cols'			=> 1,
				'auto_play'		=>3000
			);
			$setting = array_merge( $t, $setting );

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$id_lang = (int)$this->config->get('config_language_id');

			$id_products = explode(",", $setting['product_id']);



			$output = '';
			$this->load->model('catalog/product');
			$this->load->model('tool/image');

			if($id_products){
				foreach ($id_products as $id_product) {
					$result = $this->model_catalog_product->getProduct( $id_product );

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

					if ($this->config->get('config_review_status')) {
						$rating = $result['rating'];
					} else {
						$rating = false;
					}

					$product = array(
						'product_id' => $result['product_id'],
						'thumb'   	 => $image,
						'name'    	 => $result['name'],
						'price'   	 => $price,
						'special' 	 => $special,
						'rating'     => $rating,
						'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
						'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
					);
					$setting['products'][] = $product;
				}
			}

			$output = array('type'=>'product','data' => $setting );
			return $output;
		}
	}
?>