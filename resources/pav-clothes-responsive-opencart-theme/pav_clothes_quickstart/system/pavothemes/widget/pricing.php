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

class PtsWidgetPricing extends PtsWidgetPageBuilder {

		public $name = 'Manufacture';
		public $usemeneu = false;
		
		public static function getWidgetInfo(){
			return  array('label' => ('Pricing Plan'), 'explain' => 'Plan Membership', 'group' => 'opencart'  ) ;
		}


		public function renderForm( $args, $data ){

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
	                    'label' => $this->l('Subtitle'),
	                    'name'  => 'subtitle',
	                    'default'=> '',
	                    'lang'	=> 'true'
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Price'),
	                    'name'  => 'price',
	                    'default'=> 10,
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Currency'),
	                    'name'  => 'currency',
	                    'default'=> 'USD',
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Period'),
	                    'name'  => 'period',
	                    'default'=> '1 Month',
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Link Title'),
	                    'name'  => 'linktitle',
	                    'default'=> 'Buy Now',
	                    'lang'  => true,
	                ),

	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Link'),
	                    'name'  => 'link',
	                    'default'=> '#',
	                ),

	                array(
	                    'type' 	  => 'switch',
	                    'label' => $this->l('Is Featured'),
	                    'name'  => 'isfeatured',
	                    'values'  => $soption,  
	                    'default'=> '0',
	                ),
	                array(
	                   'type'  => 'textarea',
	                    'label' => $this->l('Content'),
	                    'name'  => 'content',
	                    'default'=> '',
	                    'cols' => 40,
	                    'rows' => 10,
	                    'value' => true,
	                    'lang'  => true,
	              
	                    'autoload_rte' => true,

	                    'desc'	=> $this->l('Enter Content 1')
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
			$t  = array(
				'name'=> '',
				'html'   => '',
				'widget_heading'=> '',
				'currency'=> '',
				'linktitle' => '#',
				'class' => '',
				'link'	=> ''
 			);
			$setting = array_merge( $t, $setting );
			
			$setting['subtitle'] = $this->getValueByLang( $setting, 'subtitle' );
			$setting['content'] = $this->getValueByLang( $setting, 'content' );
 
			$setting['linktitle'] = $this->getValueByLang( $setting, 'linktitle' );
 
			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$output = array('type'=>'pricing','data' => $setting );

			return $output;
		} 

	}
?>