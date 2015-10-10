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

class PtsWidgetCounting extends PtsWidgetPageBuilder {

		public $name = 'counting';

		public $group = 'typo';
		public $usemeneu = false;
		public static function getWidgetInfo(){
			return array('label' =>  ('Counting Number'), 'explain' => 'Play Counting Number In Effect', 'group' => 'typo' );
		}


		public function renderForm( $args, $data ){

	 
			$helper = $this->getFormHelper();

			$types[] = array(
		 		'value' => 'alert-success',
		 		'text'  => $this->l('Alert Success')
		 	);

		 	$types[] = array(
		 		'value' => 'alert-info',
		 		'text'  => $this->l('Alert Info')
		 	);
		 	$types[] = array(
		 		'value' => 'alert-warning',
		 		'text'  => $this->l('Alert Warning')
		 	);
		 	$types[] = array(
		 		'value' => 'alert-danger',
		 		'text'  => $this->l('Alert Danger')
		 	);

			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
	                	    
	                array(
	                    'type' => 'textarea',
	                    'label' => $this->l('Content'),
	                    'name' => 'htmlcontent',
	                    'cols' => 40,
	                    'rows' => 10,
	                    'value' => true,
	                    'lang'  => true,
	                    'default'=> '',
	                    'autoload_rte' => true,
	                ),
	                array(
	                    'type' 	  => 'select',
	                    'label'   => $this->l( 'Alert Type' ),
	                    'name' 	  => 'alert_type',
	                    'options' => array(  'query' => $types ,
	                    'id' 	  => 'value',
	                    'name' 	  => 'text' ),
	                    'default' => "1",
	                    'desc'    => $this->l( 'Select a alert style' )
	                ),

	            ),
	      		 'submit' => array(
	                'title' => $this->l('Save'),
	                'class' => 'button'
           		 )
	        );

 
		 	$default_lang = (int)$this->config->get('config_language_id');
			$a = $this->getConfigFieldsValues( $data  );
 
			$helper->tpl_vars = array(
	                'fields_value' => $a,
	                
	                'id_language' => $default_lang
        	);  


			return  $helper->generateForm( $this->fields_form );

		}

		public function renderContent(  $args, $setting ){
			

			$t  = array(
				'name'=> '',
				'html'   => '',
				'alert_type'	=> ''
			);
			$setting = array_merge( $t, $setting );
			$html = '';
			
			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$setting['html'] = isset($setting['htmlcontent_'.$languageID])?html_entity_decode($setting['htmlcontent_'.$languageID],ENT_QUOTES,'UTF-8'): "";
 
			$output = array('type'=>'alert','data' => $setting );

	  		return $output;
		}
	}
?>