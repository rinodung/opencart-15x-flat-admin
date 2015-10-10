<?php 

	class PtsWidgetPinterest extends PtsWidgetPageBuilder {
		public $name = 'pinterest';
		public $group = 'social';

		public  static function getWidgetInfo(){
			return array( 'label' => 'Pinterest', 'explain' => ' Edit Pinterest', 'group' => 'social' );
		}

		public function renderForm( $args, $data ){
				
			$helper = $this->getFormHelper();

			$button_selected = array(
				array('id' => 'horizontal', 'name' => $this->l('Horizontal')),
				array('id' => 'vertical', 'name' => $this->l('Vertical')),
				array('id' => 'none', 'name' => $this->l('No count')),
			);

			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Pinterest Form.'),
	            ),

	            'input' => array(
	            	
					array(
	                    'type' => 'select',
	                    'label' => $this->l('Button type'),
	                    'desc' => $this->l('Select button type.'),
	                    'name' => 'select_type',
	                    'options' => array(
	                        'query' => $button_selected,
	                        'id' => 'id',
	                        'name' => 'name',
	                    ),
	                    'default' => 'horizontal',
	                ),
	                 array(
	                    'type'  => 'text',
	                    'label' => $this->l('URL'),
	                    'name'  => 'url',
	                    'default'=> '',
	                    'lang'	=> 'true'
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
				'url'         => 'http://www.prestabrain.com',
				'media'       => 'http%3A%2F%2Ffarm8.staticflickr.com%2F7027%2F6851755809_df5b2051c9_z.jpg',
				'description' => 'Next%20stop%3A%20Pinterest',
				'select_type' => 'horizontal',
			);

			$setting    = array_merge( $t, $setting );

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$output = array('type'=>'pinterest','data' => $setting );

			return $output;
		}
	}