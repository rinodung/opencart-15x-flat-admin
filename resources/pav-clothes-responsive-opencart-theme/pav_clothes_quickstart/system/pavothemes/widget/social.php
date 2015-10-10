<?php 

	class PtsWidgetSocial extends PtsWidgetPageBuilder {
		public $name = 'separator_text';
		public $usemeneu = false;

		public  static function getWidgetInfo(){
			return array( 'label' => 'Social', 'explain' => 'Get list of social icons', 'group' => 'social'  );
		}

		public function renderForm( $args, $data ){
				
			$helper = $this->getFormHelper();

			$align = array(
				array('id' => 'separator_align_center', 'name' => $this->l('Align center')),
				array('id' => 'separator_align_left', 'name' => $this->l('Align left')),
				array('id' => 'separator_align_right', 'name' => $this->l('Align right')),
			);

			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Separator Form.'),
	            ),

	            'input' => array(
	            	array(
						'type' => 'text',
						'label' => $this->l('Title'),
						'name' => 'separ_title',
						//'lang' => true,
						'desc' => $this->l('will be showed on separator.'),
						'default' => '',
					),
					array(
	                    'type' => 'select',
	                    'label' => $this->l('Title position'),
	                    'desc' => $this->l('Select title location.'),
	                    'name' => 'title_align',
	                    'options' => array(
	                        'query' => $align,
	                        'id' => 'id',
	                        'name' => 'name',
	                    ),
	                    'default' => 'separator_align_center',
	                ),
	                array(
						'type' => 'text',
						'label' => $this->l('Extra class name'),
						'name' => 'el_class',
						'desc' => $this->l('If you wish to style particular content element differently, then use this field to add a class name and then refer to it in your css file.'),
						'default' => '',
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
				'separ_title' => 'separator here',
				'title_align' => 'separator_align_center',
				'el_class'    => '' ,
			);

			$setting    = array_merge( $t, $setting );

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$output = array('type'=>'separator_text','data' => $setting );
			return $output;
		}
	}