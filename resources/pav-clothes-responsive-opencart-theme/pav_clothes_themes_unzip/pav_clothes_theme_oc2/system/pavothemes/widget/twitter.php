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

class PtsWidgetTwitter extends PtsWidgetPageBuilder {

		public $name = 'twitter';
		public $group = 'social';
		
		public static function getWidgetInfo(){
			return  array('label' => ('Twitter Widget'), 'explain' => 'Get Latest Twitter TimeLife' ,'group' => 'social'  );
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
	                    'label' => $this->l('Twitter'),
	                    'name'  => 'twidget_id',
	                    'default'=> '366766896986591232',
	                    'desc' => 'Please go to the page https://twitter.com/settings/widgets/new, then create a widget, and get data-widget-id to input in this param.'
	                ),

	               	array(
	                    'type'  => 'text',
	                    'label' => $this->l('Count'),
	                    'name'  => 'count',
	                    'default'=> '2',
	                    'desc'=> 'If the param is empty or equal 0, the widget will show scrollbar when more items. Or you can input number from 1-20. Default NULL.'
	                ),
	               	
	               	array(
	                    'type'  => 'text',
	                    'label' => $this->l('User'),
	                    'name'  => 'username',
	                    'default'=> 'pavothemes',
	                ),
	               	 array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Border Color' ),
	                    'name' => 'border_color',
	                    'default' => "",
    
                	 ),

                	array(
	                    'type'  => 'text',
	                    'label' => $this->l('Width'),
	                    'name'  => 'width',
	                    'default'=> '',
	                ),
	               	
	               	array(
	                    'type'  => 'text',
	                    'label' => $this->l('Height'),
	                    'name'  => 'height',
	                    'default'=> '',
	                ),
 
                	
                	array(
	                    'type' => 'switch',
	                    'label' => $this->l( 'Show Replies' ),
	                    'name' => 'show_replies',
	                    'values' => $soption,
	                    'default' => "1",
    
                	),


                	array(
	                    'type' => 'switch',
	                    'label' => $this->l( 'Show Header' ),
	                    'name' => 'show_header',
	                    'values' => $soption,
	                    'default' => "0",
    
                	),


                	array(
	                    'type' => 'switch',
	                    'label' => $this->l( 'Show Footer' ),
	                    'name' => 'show_footer',
	                    'values' => $soption,
	                    'default' => "0",
    
                	),


                	array(
	                    'type' => 'switch',
	                    'label' => $this->l( 'Show Border' ),
	                    'name' => 'show_border',
	                    'values' => $soption,
	                    'default' => "0",
    
                	),

                	array(
	                    'type' => 'switch',
	                    'label' => $this->l( 'Show Scrollbar' ),
	                    'name' => 'show_scrollbar',
	                    'values' => $soption,
	                    'default' => "1",
    
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

		public function renderContent(  $args, $setting ){
			
			$t  = array(
				'name'=> '',
				'twidget_id'   => '366766896986591232',
				'count'   	   => '2',
				'username'     => 'pavothemes',
				'theme'   	   => 'light',
				'border_color' => 'FFFFFF',
				'width'   	   => '',
				'height'   	   => '130',
				'show_replies'   => '1',

				'show_header'    => '0',
				'show_footer'    => '0',
				'show_border'    => '0',
				'show_scrollbar' => '1',
			);

			$setting = array_merge( $t, $setting );

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$setting['chrome'] = '';

			if( !$setting['show_header'] ){
				$setting['chrome'] .= 'noheader ';
			}
			if( !$setting['show_footer'] ){
				$setting['chrome'] .= 'nofooter ';
			}
			if( !$setting['show_border'] ){
				$setting['chrome'] .= 'noborders ';
			}
			if( !$setting['show_scrollbar'] ){
				$setting['chrome'] .= 'noscrollbar ';
			}

			$setting['js'] = '<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>';
			$output = array('type'=>'twitter','data' => $setting );
	  		return $output;
		}
	}
?>