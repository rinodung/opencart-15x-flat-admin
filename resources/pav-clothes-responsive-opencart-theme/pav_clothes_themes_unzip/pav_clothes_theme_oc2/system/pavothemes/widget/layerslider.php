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

class PtsWidgetLayerslider extends PtsWidgetPageBuilder {

		public $name = 'Layerslider';
		public $usemeneu = false;
		
		public static function getWidgetInfo(){
			return  array('label' => ('Layerslider'), 'explain' => 'Play A group from leo layerslider module', 'group' => 'image'  ) ;
		}


		public function renderForm( $args, $data ){

			$helper = $this->getFormHelper();
 			
 			$this->load->model( 'pavsliderlayer/slider' );
 			$groups = $this->model_pavsliderlayer_slider->getListSliderGroups();
 


			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
	            	 array(
	                    'type' => 'select',
	                    'label' => $this->l( 'Banner Group' ),
	                    'name' => 'group_id',
	                    'options' =>  array( 'query'=>$groups,
	                    'id' => 'id',
	                    'name' => 'title' ),
	                    'default' => 8,
	                 )
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

			$t  = array(
				'name'			=> '',
				'group_id'  	 	=> 0,
	 
			);
			$this->load->model( 'pavsliderlayer/slider' );

			$setting = array_merge( $t, $setting );
			$group_id = $setting['group_id'];
			$model =  $this->model_pavsliderlayer_slider ;
		 	
		 	$url =   $this->config->get('config_secure') ? $this->config->get('config_ssl') : $this->config->get('config_url'); 
 		
	 		$setting['url'] = $url;

	 		$sliderGroup = $model->getSliderGroupById( $group_id );
			$sliders = $model->getSlidersByGroupId( $group_id );
			$setting['sliderParams'] = $sliderGroup['params'];
		 
			if( isset($sliderGroup['params']['fullwidth']) && (!empty($sliderGroup['params']['fullwidth']) || $sliderGroup['params']['fullwidth'] == 'boxed') ){
				$sliderGroup['params']['image_cropping'] = false; 
			}
			foreach( $sliders as $key=> $slider ){
				$slider["layers"] = array();
				$slider['params'] = unserialize( $slider["params"] ); 
				$slider['layersparams'] = unserialize( $slider["layersparams"] ); 
				
				if( $sliderGroup['params']['image_cropping']) { 
					 $slider['main_image'] = $model->resize($slider['image'], $sliderGroup['params']['width'], 
					 								$sliderGroup['params']['height'],'a');
				}else { 
					 $slider['main_image'] = $url."image/".$slider['image'];
				}	
				if( $sliderGroup['params']['image_cropping']) { 
					if( $slider['params']['slider_thumbnail'] ) {
						$slider['thumbnail'] = $model->resize( $slider['params']['slider_thumbnail'], $sliderGroup['params']['thumbnail_width'], 
						 								$sliderGroup['params']['thumbnail_height'],'a'); 
					}else {
						$slider['thumbnail'] = $model->resize($slider['image'], $sliderGroup['params']['thumbnail_width'], 
						 								$sliderGroup['params']['thumbnail_height'],'a'); 
					}
				}else {
					if( $slider['params']['slider_thumbnail'] ) {
						 $slider['thumbnail'] = $url."image/".$slider['params']['slider_thumbnail'];
					}else {
						 $slider['thumbnail'] = $url."image/".$slider['image'];
					}
					
				}
				$sliders[$key] = $slider;
			} 

		
			$setting['sliders'] = $sliders; 


 

			$output = array('type'=>'layerslider','data' => $setting );


			return $output;
		} 

	}
?>