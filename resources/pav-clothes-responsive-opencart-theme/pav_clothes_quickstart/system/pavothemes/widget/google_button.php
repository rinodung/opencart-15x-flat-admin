<?php

class PtsWidgetGoogle_button extends PtsWidgetPageBuilder {
	public $name = 'google_button';

	public  static function getWidgetInfo(){
		return array( 'label' => 'Google button', 'explain' => 'Google button' , 'group' => 'social'  );
	}

	public function renderForm( $args, $data ){
			
		$helper = $this->getFormHelper();

		$button_size = array(
			array('id' => '', 'name' => $this->l('Standard')),
			array('id' => 'small', 'name' => $this->l('Small')),
			array('id' => 'medium', 'name' => $this->l('Medium')),
			array('id' => 'tall', 'name' => $this->l('Tall')),
		);

		$annotation = array(
			array('id' => 'inline', 'name' => $this->l('Inline')),
			array('id' => '', 'name' => $this->l('Bubble')),
			array('id' => 'none', 'name' => $this->l('None')),
		);

		$this->fields_form[1]['form'] = array(
            'legend' => array(
                'title' => $this->l('Widget Google Button Form.'),
            ),

            'input' => array(
				array(
                    'type' => 'select',
                    'label' => $this->l('Button size'),
                    'desc' => $this->l('Select size suitable for your google button'),
                    'name' => 'size',
                    'options' => array(
                        'query' => $button_size,
                        'id' => 'id',
                        'name' => 'name',
                    ),
                    'default' => '',
                ),
                array(
                    'type' => 'select',
                    'label' => $this->l('Annotation'),
                    'desc' => $this->l('Select annotation suitable for your google button'),
                    'name' => 'annotation',
                    'options' => array(
                        'query' => $annotation,
                        'id' => 'id',
                        'name' => 'name',
                    ),
                    'default' => 'inline',
                ),
                array(
                    'type'  => 'text',
                    'label' => $this->l('Width'),
                    'name'  => 'width',
                    'desc'  => $this->l('Maximum 1600 characters.'),
                    'default'=> '300',
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
			'size'       => '',
			'annotation' => 'inline',
			'width'      => '300'
		);
		$setting    = array_merge( $t, $setting );

        $languageID = $this->config->get('config_language_id');
        $setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

		$output = array('type'=>'google_button','data' => $setting );
		return $output;
	}
}