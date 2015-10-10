<?php
/******************************************************
 *  Leo Opencart Theme Framework for Opencart 1.5.x
 *
 * @package   leotempcp
 * @version   3.0
 * @author    http://www.leotheme.com
 * @copyright Copyright (C) October 2013 LeoThemes.com <@emai:leotheme@gmail.com>
 *               <info@theme.com>.All rights reserved.
 * @license   GNU General Public License version 2
 * ******************************************************/

class PtsWidgetCounters extends PtsWidgetPageBuilder {

		/**
		 *
		 */
		protected $max_image_size = 1048576;

		/**
		 *
		 */
		public $name = 'counters';
		public $group = 'others';

	    /**
		 *
		 */
		public static function getWidgetInfo()
		{
			return array('label' =>  ('Counters'), 'explain' => 'Create Counters Information', 'group' => 'others'  );
		}

		/**
		 *
		 */
		public function renderForm($args=null, $data)
		{
			$key = time();

			$helper = $this->getFormHelper();

		 	$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
                	array(
	                    'type'  => 'text',
	                    'label' => $this->l('Icon File'),
	                    'name'  => 'imagefile',
	                    'class' => 'imageupload',
	                    'default'=> '',
	                    'id'	 => 'imagefile'.$key,
	                    'desc'	=> 'Put image folder in the image folder ROOT_SHOP_DIR/img/'
	                ),
					 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Image Size'),
	                    'name'  => 'imagesize',
	                    'default'=> '80x80',

	                    'desc'	=> $this->l('WIDTHxHEIGHT'),
	                     ),
	               	 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Icon Class'),
	                    'name'  => 'icon',

	                    'default'=> 'fa-leaf',

	                    'desc'	=> $this->l('If you use Icon Class, The image at bellow will be not used. you can use icon from font-awesome'),
	                     ),
					  array(
	                    'type' => 'select',
	                    'label' => $this->l( 'Color class' ),
	                    'name' => 'text_color',
	                    'options' => array(  'query' => array(
	                        array('id' => '', 'name' => $this->l('None')),
	                        array('id' => 'text-primary', 'name' => $this->l('Primary')),
                          	array('id' => 'text-info', 'name' => $this->l('Info')),
                          	array('id' => 'text-danger', 'name' => $this->l('Danger')),
                          	array('id' => 'text-warning', 'name' => $this->l('Warning')),
                          	array('id' => 'text-success', 'name' => $this->l('Success')),
                          	array('id' => 'text-purple', 'name' => $this->l('Purple')),
                          	array('id' => 'text-red', 'name' => $this->l('Red')),
                          	array('id' => 'text-orange', 'name' => $this->l('Orange')),
                          	array('id' => 'text-yellow', 'name' => $this->l('Yellow')),
                          	array('id' => 'text-default', 'name' => $this->l('Default')),
                          	array('id' => 'text-darker', 'name' => $this->l('Darker')),
	                    ),
	                    'id' => 'id',
	                    'name' => 'name' ),
	                    'default' => "",
	                ),
 					array(
	                    'type'  => 'text',
	                    'label' => $this->l('Counter number'),
	                    'name'  => 'counters',
	                    'default'=> '896',

	                    'desc'	=> $this->l('Enter counter bumber'),
	                     ),
	                  array(
	                    'type'  => 'textarea',
	                    'label' => $this->l('Content'),
	                    'name'  => 'content',

	                    'default'=> '',
	  					'lang'	=> true,
						'desc'	=> $this->l('If you use Icon Class, The image bellow will be not used.'),
						'autoload_rte' => true,
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

			$this->load->model('tool/image');
			$this->model_tool_image->resize('no_image.png', 100, 100);
			$placeholder  = $this->model_tool_image->resize('no_image.png', 100, 100);
		//	d( $this->token );
			$string = '



					 <script type="text/javascript">
						$(".imageupload").WPO_Gallery({key:"'.$key.'",gallery:false,placehold:"'.$placeholder.'",baseurl:"'.HTTP_CATALOG . 'image/'.'" } );
					</script>

			';
			return  '<div id="imageslist'.$key.'">'.$helper->generateForm( $this->fields_form ) .$string."</div>" ;

		}

 		/**
		 *
		 */
		public function renderContent(  $args, $setting ){
			$t  = array(
				'name'=> '',
				'image'	=> '',
			 	'imagesize' => '80x80',
			 	'imageurl'  => '',
			 	'icon'		=> ''
			);

			$url = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? HTTPS_SERVER : HTTP_SERVER;
	        $url .= 'image/';


			$setting = array_merge( $t, $setting );

			$size = explode( "x", $setting['imagesize'] );

			$languageID = $this->config->get('config_language_id');
			$setting['content']= isset($setting['content_'.$languageID])?html_entity_decode($setting['content_'.$languageID],ENT_QUOTES,'UTF-8'): '';


			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			if($size[0]){
				$setting['iconurl'] = $this->model_tool_image->resize($setting['imagefile'],$size[0], $size[1]);
			}else{
				$setting['iconurl'] = $url.$setting['imagefile'];
			}
			$output = array('type'=>'image','data' => $setting );

	  		return $output;
		}


	}
?>