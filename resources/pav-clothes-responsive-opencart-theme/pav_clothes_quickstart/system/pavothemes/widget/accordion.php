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

class PtsWidgetAccordion extends PtsWidgetPageBuilder {

		public $name = 'accordion';

		public $usemeneu = false;

		public  static function getWidgetInfo(){
			return array( 'label' => 'Accordion', 'explain' => 'Create Accordions List', 'group' => 'typo'  );
		}

		public static function renderButton(){

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
	                    'label' => $this->l('Header 1'),
	                    'name'  => 'header_1',
	                    'default'=> 'Sample Header 1',
	                    'lang'=> true
	                ),
	 				 array(
	                    'type'  => 'textarea',
	                    'label' => $this->l('Content 1'),
	                    'name'  => 'content_1',
	                    'default'=> 'Content Sample 1',
	                    'cols' => 40,
	                    'rows' => 10,
	                    'value' => true,
	                    'lang'  => true,
	              
	                    'autoload_rte' => true,

	                    'desc'	=> $this->l('Enter Content 1')
	                ),
	 				
	 				array(
				        'type'  => 'text',
				        'label' => $this->l('Header 2'),
				        'name'  => 'header_2',
				        'default'=> 'Sample Header 2',
				        'lang'=> true
				    ),
						 array(
				        'type'  => 'textarea',
				        'label' => $this->l('Content 2'),
				        'name'  => 'content_2',
				        'default'=> 'Content Sample 2',
				        'cols' => 40,
				        'rows' => 9,
				        'value' => true,
				        'lang'  => true,
				  
				        'autoload_rte' => true,

				        'desc'	=> $this->l('Enter Content 2')
				    ),

					 array(
				        'type'  => 'text',
				        'label' => $this->l('Header 3'),
				        'name'  => 'header_3',
				        'default'=> '',
				        'lang'=> true
				    ),
						 array(
				        'type'  => 'textarea',
				        'label' => $this->l('Content 3'),
				        'name'  => 'content_3',
				        'default'=> '',
				        'cols' => 40,
				        'rows' => 9,
				        'value' => true,
				        'lang'  => true,
				  
				        'autoload_rte' => true,

				        'desc'	=> $this->l('Enter Content 3')
				    ),
					 array(
				        'type'  => 'text',
				        'label' => $this->l('Header 4'),
				        'name'  => 'header_4',
				        'default'=> '',
				        'lang'=> true
				    ),
						 array(
				        'type'  => 'textarea',
				        'label' => $this->l('Content 4'),
				        'name'  => 'content_4',
				        'default'=> '',
				        'cols' => 40,
				        'rows' => 9,
				        'value' => true,
				        'lang'  => true,
				  
				        'autoload_rte' => true,

				        'desc'	=> $this->l('Enter Content 4')
				    ),

					array(
				        'type'  => 'text',
				        'label' => $this->l('Header 5'),
				        'name'  => 'header_5',
				        'default'=> '',
				        'lang'=> true
				    ),
						 array(
				        'type'  => 'textarea',
				        'label' => $this->l('Content 5'),
				        'name'  => 'content_5',
				        'default'=> '',
				        'cols' => 40,
				        'rows' => 9,
				        'value' => true,
				        'lang'  => true,
				  
				        'autoload_rte' => true,

				        'desc'	=> $this->l('Enter Content 5')
				    ),	

				    array(
				        'type'  => 'text',
				        'label' => $this->l('Header 6'),
				        'name'  => 'header_6',
				        'default'=> '',
				        'lang'=> true
				    ),
					array(
				        'type'  => 'textarea',
				        'label' => $this->l('Content 6'),
				        'name'  => 'content_6',
				        'default'=> '',
				        'cols' => 40,
				        'rows' => 9,
				        'value' => true,
				        'lang'  => true,
				        'autoload_rte' => true,
				        'desc'	=> $this->l('Enter Content 6')
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
		public function renderContent(  $args, $setting ){
			
			$t  = array(
				'name'=> '',
				'html'   => '',
			);

			$setting = array_merge( $t, $setting );

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:''; 
			
			$html = '';
			if( is_array($setting['html']) && isset($setting['html'][$languageID]) ){
				$html = $setting['html'][$languageID];
				$html = html_entity_decode($html, ENT_QUOTES, 'UTF-8');
			}
	 		
	 		$header = '';
	 		$content = $html;	

	 		$ac = array();
			
	 		for( $i=1; $i<=6; $i++ ){
	 			$header = isset($setting['header_'.$i."_".$languageID])?$setting['header_'.$i."_".$languageID]: "";
	 			
	 			if( !empty($header) ) {
	 				$content = isset($setting['content_'.$i."_".$languageID])?$setting['content_'.$i."_".$languageID]: "";
	 				$ac[] = array( 'header'=> $header, 'content' => trim($content) );
	 			}
	 		}
	 	 	$setting['accordions'] = $ac; 

	 	 	$setting['id']	 = rand()+rand()+count($ac);

			$output = array('type'=>'accordion','data' => $setting );

	  		return $output;
		}
		 
	}
?>