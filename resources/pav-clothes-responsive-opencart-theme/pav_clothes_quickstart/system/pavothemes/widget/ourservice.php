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

class PtsWidgetOurservice extends PtsWidgetPageBuilder {

		/**
		 *
		 */
		protected $max_image_size = 1048576;
		public $usemeneu = false;
		/**
		 *
		 */
		public $name = 'ourservice';
		public $group = 'others';



	    /**
		 *
		 */
		public static function getWidgetInfo(){
			return array('label' =>  ('Our Service'), 'explain' => 'Create Service Information', 'group' => 'others'  );
		}

		/**
		 *
		 */
		public function renderForm( $args, $data ){

			$key = time();

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

	        $position = array();
	        $types[] = array('value' => 'inline', 'text'  => $this->l('List Inline'));
			$types[] = array('value' => 'unstyled', 'text'  => $this->l('List Unstyled'));
			$types[] = array('value' => 'timeline', 'text'  => $this->l('Timeline'));


		 	$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
                	array(
	                    'type'  => 'text',
	                    'label' => $this->l('Image File'),
	                    'name'  => 'imagefile',
	                    'class' => 'imageupload',
	                    'default'=> '',
	                    'id'	 => 'imagefile'.$key,
	                    'desc'	=> 'Put image folder in the image folder ROOT_SHOP_DIR/img/'
	                ),
	               	 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Icon Class'),
	                    'name'  => 'icon',
	                    'default'=> 'fa-gear',
	                    'desc'	=> $this->l('If you use Icon Class, The image at bellow will be not used. you can use icon from font-awesome'),
	                     ),
	               	array(
	                    'type' 	  => 'select',
	                    'label'   => $this->l( 'Service Type' ),
	                    'name' 	  => 'service_types',
	                    'options' => array(  'query' => $types ,
	                    'id' 	  => 'value',
	                    'name' 	  => 'text' ),
	                    'default' => "top"
	                ),
	                array(
	                    'type' => 'textarea',
	                    'label' => $this->l('Content'),
	                    'name' => 'content',
	                    'cols' => 20,
	                    'rows' => 10,
	                    'value' => true,
	                    'lang'  => true,
	                    'default'=> 'If you use Icon Class, The image bellow will be not used',
	                    'autoload_rte' => true,
	                ),
                	 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Image Size'),
	                    'name'  => 'imagesize',
	                    'default'=> '80x80',
	                    'desc'	=> $this->l('WidthxHeight'),
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
			 	'size' => '80x80',
			 	'icon' => '',
			 	'alignment' => '',
			 	'animation' => '',
			 	'ispopup' 	=> '1',
			 	'imageurl'  => '',
			 	'link'		=> '',
			 	'service_types'		=> 'inline',
			 	'widget_heading' => ''
			);


			$url = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? HTTPS_SERVER : HTTP_SERVER;
	        $url .= 'image/';


			$setting = array_merge( $t, $setting );

			$size = explode( "x", $setting['size'] );


			$setting['thumbnailurl'] = $url.$setting['imagefile'];
			$setting['imageurl'] = $url.$setting['imagefile'];

			if( count($size) == 2 ){
			 	$this->load->model('tool/image');
				$setting['thumbnailurl']= $this->model_tool_image->resize( $setting['imagefile'], (int)$size[0], (int)$size[1],'w');
			}

			$languageID = $this->config->get('config_language_id');
			$setting['content']= isset($setting['content_'.$languageID])?html_entity_decode($setting['content_'.$languageID],ENT_QUOTES,'UTF-8'): '';


			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$output = array('type'=>'ourservice','data' => $setting );

	  		return $output;

		}


	}
?>