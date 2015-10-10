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
require('instagram_lib.php');
use MetzWeb\Instagram\Instagram;


class PtsWidgetInstagram extends PtsWidgetPageBuilder {

		/**
		 *
		 */
		public $name = 'Instagram';
		public $group = 'image';

	    /**
		 *
		 */
		public static function getWidgetInfo(){
			return array('label' =>  ('Instagram Image For Theme'), 'explain' => 'Create Instagram Gallery', 'group' => 'image'  );
		}

		/**
		 *
		 */
		public function renderForm( $args, $data ){

			$key = time();

		// echo '<pre>'.print_r( $data ,1 );die;
			$helper = $this->getFormHelper();
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
	                    'type'  => 'text',
	                    'label' => $this->l('API Key'),
	                    'name'  => 'apikey',
	                    'class' => 'apikey',
	                    'default'=> '',
	                    'desc'	=> 'Please enter key API'
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('API Secret'),
	                    'name'  => 'apisecret',
	                    'class' => 'apisecret',
	                    'default'=> '',
	                    'desc'	=> 'Please enter API Secret'
	                ),
					array(
	                    'type'  => 'text',
	                    'label' => $this->l('API Callback'),
	                    'name'  => 'apicallback',
	                    'class' => 'apicallback',
	                    'default'=> 'https://www.facebook.com/tungkun1991',
	                    'desc'	=> 'Please enter API Callback'
	                ),
					//
					array(
	                    'type'  => 'text',
	                    'label' => $this->l('Username'),
	                    'name'  => 'username',
	                    'class' => 'username',
	                    'default'=> '',
	                    'desc'	=> 'Please enter Username'
	                ),
	                array(
	                    'type' => 'select',
	                    'label' => $this->l( 'Get Image by style' ),
	                    'name' => 'getstyle',
	                    'desc'  => 'Select image alignment',
	                    'options' => array(  'query' => array(
	                        array('id' => 'user', 'name' => $this->l('User')),
	                        array('id' => 'hastag', 'name' => $this->l('HasTag')),
                          	array('id' => 'location', 'name' => $this->l('Location'))
	                    ),
	                    'id' => 'id',
	                    'name' => 'name' ),
	                    'default' => "left",
	                 ),
					  array(
	                    'type'  => 'text',
	                    'label' => $this->l('Image size'),
	                    'name'  => 'size',
	                    'class' => 'image',
	                    'default'=> '200x100',
	                    'id'	 => 'imagesize'.$key	,
	                    'desc'	=> "Enter image size. Example: thumbnail, medium, large, full or other sizes defined by current theme. Alternatively enter image size in pixels: 200x100 (Width x Height). Leave empty to use 'thumbnail' size."
	                ),
					array(
	                    'type'  => 'text',
	                    'label' => $this->l('Position Title'),
	                    'name'  => 'position',
	                    'class' => 'position',
	                    'default'=> '',
	                    'desc'	=> ''
	                ),
					array(
	                    'type'  => 'text',
	                    'label' => $this->l('Limit'),
	                    'name'  => 'limit',
	                    'class' => 'limit',
	                    'default'=> '9',
	                    'desc'	=> 'Please enter limit image item'
	                ),
					array(
	                    'type'  => 'text',
	                    'label' => $this->l('Width Text'),
	                    'name'  => 'width_text',
	                    'class' => 'width',
	                    'default'=> '',
	                    'desc'	=> ''
	                ),
	            ),
	      		 'submit' => array(
	                'title' => $this->l('Save'),
	                'class' => 'button'
           		 )
	        );

		 	$default_lang = (int)$this->config->get('config_language_id');

			$helper->tpl_vars = array(
	                'fields_value' => $this->getConfigFieldsValues( $data ),

	                'id_language' => $default_lang
        	);
			
			return  $helper->generateForm( $this->fields_form );

		}
		
		/**
		 *
		 */
		 public function instagram($apiKey='',$apiSecret='',$apiCallback='https://www.facebook.com/tungkun1991'){
			$instagram = new Instagram(array(
			  'apiKey'      => $apiKey,
			  'apiSecret'   => $apiSecret,
			  'apiCallback' => $apiCallback, // must point to success.php
			));

			return $instagram;

		}


 		/**
		 *
		 */
		public function renderContent(  $args, $setting ){
			$t  = array(
				'name'=> '',
				'getstyle'	=> '',
			 	'imagesize' => '200x200',
			 	'username' => '',
			 	'hastag' => '',
			 	'longitude' => '',
			 	'latitude' => '',
			 	'ispopup' 	=> '1',
			 	'imageurl'  => '',
				'limit'	=> '9',
				'position'	=> '6'
				
			);


			$url = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? HTTPS_SERVER : HTTP_SERVER;
	        $url .= 'image/';


			$setting = array_merge( $t, $setting );

			$size = explode( "x", $setting['size'] );
			
			$setting['width'] = !empty($size[0]) ? $size[0] : 138;
			$setting['height'] = !empty($size[1]) ? $size[1] : 138;
			
			if($setting['apikey'] && $setting['apisecret']){
				$instagram = $this->instagram($setting['apikey'],$setting['apisecret']);
				$user = $instagram->searchUser($setting['username'],$setting['limit']);
				$user_id = (is_object($user) && isset($user->data[0])) ? $user->data[0]->id:0;
			}
			
			
			$rs_instagram =	"";
			if($setting['username'] && $setting['getstyle'] == 'user'){
				$rs_instagram =	$instagram->getUserMedia($user_id,$setting['limit']);
			}elseif($setting['hastag'] && $setting['getstyle']	== 'hastag'){
				$rs_instagram =	$instagram->getTagMedia($setting['hastag'],$setting['limit']);
			}
			
			$setting['thumbnailurl'] = array();
			if(isset($rs_instagram->data) && $rs_instagram->data){
					foreach($rs_instagram->data as $datas){
					$data =	$datas->images->standard_resolution->url;
					$setting['thumbnailurl'][]	= $data;
				
				}
			}

			$output = array('type'=>'image','data' => $setting );

	  		return $output;
		}


	}
?>