<?php
/******************************************************
 * PrestaFox 1.6.x
 *
 * @package   pspagebuilder
 * @version   3.0
 * @author    http://www.leotheme.com
 * @copyright Copyright (C) October 2013 LeoThemes.com <@emai:leotheme@gmail.com>
 *               <info@leotheme.com>.All rights reserved.
 * @license   GNU General Public License version 2
 * ******************************************************/
class PtsWidgetFlickr extends PtsWidgetPageBuilder {

	public $name = 'flickr';
	public $group = 'typo';

	public  static function getWidgetInfo(){
		return array( 'label' => 'Flickr', 'explain' => 'Flickr Api', 'group' => 'typo' );
	}

	public function renderForm( $args, $data ){
		$helper = $this->getFormHelper();

		$num_photos = array(
			array('id' => '1', 'name' => $this->l('1 photo')),
			array('id' => '2', 'name' => $this->l('2 photos')),
			array('id' => '3', 'name' => $this->l('3 photos')),
			array('id' => '4', 'name' => $this->l('4 photos')),
			array('id' => '5', 'name' => $this->l('5 photos')),
			array('id' => '6', 'name' => $this->l('6 photos')),
			array('id' => '7', 'name' => $this->l('7 photos')),
			array('id' => '8', 'name' => $this->l('8 photos')),
			array('id' => '9', 'name' => $this->l('9 photos')),
		);
		$type = array(
			array('id' => 'user', 'name' => $this->l('User')),
			array('id' => 'group', 'name' => $this->l('Group')),
		);
		$display = array(
			array('id' => 'lastest', 'name' => $this->l('Lastest')),
			array('id' => 'random', 'name' => $this->l('Random')),
		);

		$this->fields_form[1]['form'] = array(
            'legend' => array(
                'title' => $this->l('Widget Form.'),
            ),
            'input' => array(
                array(
					'type' => 'text',
					'label' => $this->l('Flickr title'),
					'name' => 'flickr_title',
					//'lang' => true,
					'desc' => $this->l('will be showed on home page.'),
					'default' => 'Flickr',
				),
				array(
					'type' => 'text',
					'label' => $this->l('Flickr ID'),
					'name' => 'flickr_id',
					'desc' => $this->l('To find your flickID visit ').'<a target="_blank" href="http://idgettr.com/">idGettr</a>',
					'default' => '14437541@N00',
				),
				array(
                    'type' => 'select',
                    'label' => $this->l('Number of photos'),
                    'desc' => $this->l('Number of photos.'),
                    'name' => 'flickr_photos',
                    'options' => array(
                        'query' => $num_photos,
                        'id' => 'id',
                        'name' => 'name',
                    ),
                    'default' => '9',
                ),
                array(
                    'type' => 'select',
                    'label' => $this->l('Type'),
                    'desc' => $this->l('Photo stream type.'),
                    'name' => 'flickr_type',
                    'options' => array(
                        'query' => $type,
                        'id' => 'id',
                        'name' => 'name',
                    ),
                    'default' => 'user',
                ),
                array(
                    'type' => 'select',
                    'label' => $this->l('Display'),
                    'desc' => $this->l('Photo order.'),
                    'name' => 'flickr_display',
                    'options' => array(
                        'query' => $display,
                        'id' => 'id',
                        'name' => 'name',
                    ),
                    'default' => 'lastest',
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
			'flickr_title'=> 'Flickr',
			'flickr_id'   => '14437541@N00',
			'flickr_photos'=> '9',
			'flickr_type'   => 'user',
			'flickr_display'=> 'lastest',
			'el_class'   => '',
		);

		$setting = array_merge( $t, $setting );

		$languageID = $this->config->get('config_language_id');
		$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

		$output = array('type'=>'flickr','data' => $setting );
		return $output;
	}

}
?>