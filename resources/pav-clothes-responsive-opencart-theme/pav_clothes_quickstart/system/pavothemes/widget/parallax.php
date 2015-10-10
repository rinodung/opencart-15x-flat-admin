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

class PtsWidgetParallax extends PtsWidgetPageBuilder {

		public $name = 'parallax';

		public $usemeneu = false;

		public  static function getWidgetInfo(){
			return array( 'label' => 'Parallax', 'explain' => 'Create Parallax Section', 'group' => 'other'  );
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
	                    'type' => 'textarea',
	                    'label' => $this->l('Content'),
	                    'name' => 'content_html',
	                    'cols' => 40,
	                    'rows' => 10,
	                    'value' => true,
	                    'lang' => true,
	                    'default'=> '',
	                    'autoload_rte' => true,
	                    'desc'	=> 'Enter HTML CODE in here'
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
                    'type' => 'select',
                    'label' => $this->l( 'Parallax Type' ),
                    'name' => 'parallaxtype',
                    'desc'  => 'Select parallax type',
                    'options' => array(  'query' => array(
                        array('id' => 'image', 'name' => $this->l('Image type')),
                        array('id' => 'color', 'name' => $this->l('Color type')),
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
				'parallaxtype'	=> 'image',
				'content_html'   => '',
				'headingstyle' => '',
			);

			$url = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? HTTPS_SERVER : HTTP_SERVER;
	        $url .= 'image/';


			$setting = array_merge( $t, $setting );



			$setting['iconurl'] = $url.$setting['iconfile'];

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$setting['content_html']= isset($setting['content_html_'.$languageID])?html_entity_decode($setting['content_html_'.$languageID],ENT_QUOTES,'UTF-8'): '';

			$output = array('type'=>'image','data' => $setting );

	  		return $output;
		}

	}
?>