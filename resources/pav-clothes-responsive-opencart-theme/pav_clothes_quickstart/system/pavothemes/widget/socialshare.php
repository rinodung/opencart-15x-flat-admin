<?php 

	class PtsWidgetSocialshare extends PtsWidgetPageBuilder {
		
		public $name = 'socialshare';
		public $usemeneu = false;

		protected static $networks = array('Facebook', 'Twitter', 'Google', 'Pinterest');

		public  static function getWidgetInfo(){
			return array( 'label' => 'Social Share', 'explain' => 'Get list of sharing socials', 'group' => 'social'  );
		}

		public function renderForm( $args, $data ){
				
			$helper = $this->getFormHelper();

			$align = array(
				array('id' => 'separator_align_center', 'name' => $this->l('Align center')),
				array('id' => 'separator_align_left', 'name' => $this->l('Align left')),
				array('id' => 'separator_align_right', 'name' => $this->l('Align right')),
			);

			$fields = array();
			foreach (self::$networks as $network) {
				$fields[] = array(
					'type' => 'switch',
					'label' => $network,
					'name' => 'PS_SC_'.Tools::strtoupper($network),
					'values' => array(
						array(
							'id' => Tools::strtolower($network).'_active_on',
							'value' => 1,
							'label' => $this->l('Enabled')
						),
						array(
							'id' => Tools::strtolower($network).'_active_off',
							'value' => 0,
							'label' => $this->l('Disabled')
						)
					)
				);
			}	

			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Separator Form.'),
	            ),

	            'input' =>  $fields,
			 
	 				 
	        
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
				'pagelink'    => '' ,
				'pagename'	 => '',
			);

			$setting    = array_merge( $t, $setting );

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$s = '';
			$setting['pagelink'] = 'http'.$s.'://' .$_SERVER['HTTP_HOST'].'/'.$_SERVER['REQUEST_URI'];

			global $currentIndex ; 

			$output = array('type'=>'socialshare','data' => $setting );
			return $output;
		}
	}