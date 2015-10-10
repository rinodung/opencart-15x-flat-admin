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

class PtsWidgetHeading extends PtsWidgetPageBuilder {

		public $name = 'heading';


		public static function getWidgetInfo(){
			return array('label' =>  ('Heading'), 'explain' => 'Heading block', 'group' => 'others'  );
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
	                    'label' => $this->l('Sub title'),
	                    'name'  => 'sub_title',
	                    'class' => 'sub_title',
	                    'default'=> '',
	                    'desc'	=> $this->l('Please insert sub title.')
	                ),
	            	array(
	                    'type'  => 'text',
	                    'label' => $this->l('Icon File'),
	                    'name'  => 'iconfile',
	                    'class' => 'imageupload',
	                    'default'=> '',
	                    'id'	 => 'iconfile'.$key,
	                    'desc'	=> 'Put image folder in the image folder ROOT_SHOP_DIR/image/'
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Icon Class'),
	                    'name'  => 'iconclass',
	                    'class' => 'image',
	                    'default'=> '',
	                    'desc'	=> $this->l('Example: fa-umbrella fa-2 radius-x')
	                ),
	                array(
	                    'type' => 'textarea',
	                    'label' => $this->l('Content'),
	                    'name' => 'content_html',
	                    'cols' => 40,
	                    'rows' => 10,
	                    'value' => true,

	                    'default'=> '',
	                    'autoload_rte' => false,
	                    'desc'	=> 'Enter HTML CODE in here'
	                ),
	                array(
	                    'type' => 'select',
	                    'label' => $this->l( 'Styles' ),
	                    'name' => 'headingstyle',
	                    'desc'  => 'Select image alignment',
	                    'options' => array(  'query' => array(
	                        array('id' => 'heading-v1', 'name' => $this->l('Heading v1')),
	                        array('id' => 'heading-v2', 'name' => $this->l('Heading v2')),
	                        array('id' => 'heading-v3', 'name' => $this->l('Heading v3')),
	                        array('id' => 'heading-v4', 'name' => $this->l('Heading v4')),
	                        array('id' => 'heading-v5', 'name' => $this->l('Heading v5')),
	                        array('id' => 'heading-v6', 'name' => $this->l('Heading v6')),
	                        array('id' => 'heading-v7', 'name' => $this->l('Heading v7')),
	                        array('id' => 'heading-v8', 'name' => $this->l('Heading v8')),
	                        array('id' => 'heading-v9', 'name' => $this->l('Heading v9')),
	                        array('id' => 'heading-icon', 'name' => $this->l('Heading icon')),
	                    ),
	                    'id' => 'id',
	                    'name' => 'name' ),
	                    'default' => "heading-v1",
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

		public function renderContent(  $args, $setting ){

			$t = array(
				'name'=> '',
				'iconfile' => '',
				'imagesize' => '200x200',
				'iconclass' => '',
				'content_html'   => '',
				'headingstyle' => ''
			);

			$url = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? HTTPS_SERVER : HTTP_SERVER;
	        $url .= 'image/';


			$setting = array_merge( $t, $setting );



			$setting['iconurl'] = $url.$setting['iconfile'];

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$output = array('type'=>'image','data' => $setting );

	  		return $output;
		}


	}
?>