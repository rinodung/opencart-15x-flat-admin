<?php
/******************************************************
 * @package Pav Product Tabs module for Opencart 1.5.x
 * @version 1.0
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Feb 2012 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/

class ControllerModulePavproducttabs extends Controller {

	private $data;

	public function index($setting) {
		static $module = 0;

		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$this->load->language('module/pavproducttabs');

		//fix colorbox for quickview
		$this->data['button_cart'] = $this->language->get('button_cart');
		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavproducttabs.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavproducttabs.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/pavproducttabs.css');
		}
		$default = array(
			'latest' => 1,
			'limit' => 9
		);
		$this->data['width'] = $setting['width'];
		$this->data['height'] = $setting['height'];
		$this->data['cols']   = (int)$setting['cols'];
		$this->data['itemsperpage']   = (int)$setting['itemsperpage'];


		$langID = $this->config->get('config_language_id');

		$description = '';
		if(isset($setting['description'][$langID])) {
			$description = html_entity_decode($setting['description'][$langID], ENT_QUOTES, 'UTF-8');
		}
		$this->data['module_description'] = $description;

		$this->data['module_class'] = $setting['module_class'];

		$this->data['tabs'] = array();

		$data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);

		$setting['tabs'] = array_flip(  $setting['tabs'] );
		$products = array();
		$this->data['heading_title'] ='';
		$tabs = array(
			'latest' 	 => array(),
			'featured'   => array(),
			'bestseller' => array(),
			'special'   => array(),
			'mostviewed' => array()
		);

 		if(isset($setting['tabs']['featured'])){
 			$ids = isset($setting['featured'])?$setting['featured']:array();
			$tabs['featured'] = $this->getProducts( $this->getFeatured($data,$ids), $setting );
		}
		if( isset($setting['tabs']['latest']) ){
			$tabs['latest'] = $this->getProducts( $this->model_catalog_product->getProducts( $data ), $setting );
	 	}
		if( isset($setting['tabs']['bestseller']) ){
			$tabs['bestseller'] = $this->getProducts( $this->model_catalog_product->getBestSellerProducts( $data['limit'] ), $setting );
	 	}
		if( isset($setting['tabs']['special']) ){
			$tabs['special'] = $this->getProducts( $this->model_catalog_product->getProductSpecials( $data ), $setting );
		}
		if( isset($setting['tabs']['mostviewed']) ){
			$this->data['sort'] = 'p.viewed';
			$tabs['mostviewed'] = $this->getProducts( $this->model_catalog_product->getProducts( $data ), $setting );
		}

		$this->data['tabs'] = $tabs;
		$this->data['module'] = $module++;
		$this->data['objlang'] = $this->language;
		$this->data['configs'] = $this->config;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/pavproducttabs.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/pavproducttabs.tpl', $this->data);
		} else {
			return $this->load->view('default/template/module/pavproducttabs.tpl', $this->data);
		}
	}
	private function getFeatured($option = array(), $ids){
		$this->load->model('catalog/product');
		$products = explode(',', $ids);
		$return = array();
		if(!empty($products)){
			$limit = (isset($option['limit']) && !empty($option['limit']))?$option['limit']: 5;
			$products = array_slice($products, 0, (int)$limit);
			
			foreach ($products as $product_id) {
				$product_info = $this->model_catalog_product->getProduct($product_id);
				if($product_info ) {
					$return[] = $product_info;
				}
			}
		}
		return $return;
	}
	private function getProducts( $results, $setting ){
		$products = array();
		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				// Image Attribute for product
                $product_images = $this->model_catalog_product->getProductImages($result['product_id']);
                if(isset($product_images) && !empty($product_images)) {
                    $thumb2 = $this->model_tool_image->resize($product_images[0]['image'], $setting['width'], $setting['height']);
                }
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

			// $product_images = $this->model_catalog_product->getProductImages($result['product_id']);

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
}
?>