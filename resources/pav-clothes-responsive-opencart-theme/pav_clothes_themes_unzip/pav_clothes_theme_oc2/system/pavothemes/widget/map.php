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

class PtsWidgetMap extends PtsWidgetPageBuilder {

		public $name = 'map';

		
		public static function getWidgetInfo(){
			return array('label' =>  ('Google Map'), 'explain' => 'Create A Google Map', 'group' => 'others'  );
		}


		public function renderForm( $args, $data ){
			$helper = $this->getFormHelper();
 

			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Latitude'),
	                    'name'  => 'latitude',
	                    'default'=> 21.010904,
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Longitude'),
	                    'name'  => 'longitude',
	                    'default'=> 105.787736,
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Zoom'),
	                    'name'  => 'zoom',
	                    'default'=> 11,
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Width'),
	                    'name'  => 'width',
	                    'default'=> 250,
	                ),
	                 array(
	                    'type'  => 'text',
	                    'label' => $this->l('Height'),
	                    'name'  => 'height',
	                    'default'=> 200,
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
				'latitude' => "21.010904",
				'longitude' => '105.787736',
				'zoom'	 =>  11,
				'width'	=> '250',
				'height'	=> '200',
				'is_preview' => trim(Tools::getValue('controller'))=="widget" ?1:0,
				'mapid'	=> 'map-'.(rand()+time())
			);


			$setting = array_merge( $t, $setting );

			$setting['height']  = $setting['height'].'px';
			$setting['width'] = $setting['width']=="100%"?"100%":$setting['width'].'px'; 
			
			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';
			
			$output = array('type'=>'map','data' => $setting );
 
			return $output;
		}

	}
?>