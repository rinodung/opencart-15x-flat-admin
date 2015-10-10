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

class PtsWidgetTeam extends PtsWidgetPageBuilder {

		public $name = 'team';
		public $group = 'others';
		
		public static function getWidgetInfo(){
			return  array('label' => ('Team Widget'), 'explain' => 'Create new a team' ,'group' => 'others'  );
		}


		public function renderForm( $args, $data ){
			
			$key = time();
			
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
	                    'label' => $this->l('Icon File'),
	                    'name'  => 'iconfile',
	                    'class' => 'imageupload',
	                    'default'=> '',
	                    'id'	 => 'iconfile'.$key,
	                    'desc'	=> 'Put image folder in the image folder ROOT_SHOP_DIR/image/'
	                ),
	                array(
	                    'type'  => 'text',
	                    'label' => $this->l('Name'),
	                    'name'  => 'name_team',
	                    'default'=> '',
	                    'desc' => 'Please enter name.'
	                ),

	               	array(
	                    'type'  => 'text',
	                    'label' => $this->l('Job title'),
	                    'name'  => 'job_title',
	                    'default'=> '',
	                    'desc'=> 'Please enter Job title'
	                ),
	               	
	               	array(
	                    'type' => 'textarea',
	                    'label' => $this->l('Content'),
	                    'name' => 'htmlcontent',
	                    'cols' => 40,
	                    'rows' => 10,
	                    'value' => '',
	                    'lang'  => true,
	                    'default'=> '',
	                    'autoload_rte' => true,
	                ),
	               	 array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Facebook' ),
	                    'name' => 'facebook_use',
	                    'default' => "PavoThemes",
						'desc' => 'Example: PavoThemes'
                	 ),

                	array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Twitter' ),
	                    'name' => 'twitter_id',
	                    'default' => "366766896986591232",
						'desc' => 'Example: 366766896986591232'
                	 ),
					 
					 array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Pinterest' ),
	                    'name' => 'pinterest_user',
	                    'default' => "",
						'desc' => 'Example: PavoThemes'
                	 ),
	               	
					array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Google Plus' ),
	                    'name' => 'google_plus',
	                    'default' => "113894539042817548313",
						'desc' => 'Example: 113894539042817548313'
                	 ),
 
                	
                	 array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Vimeo' ),
	                    'name' => 'vimeo_user',
	                    'default' => "PavoThemes",
						'desc' => 'Example: PavoThemes'
                	 ),

					 array(
	                    'type' => 'text',
	                    'label' => $this->l( 'Youtube' ),
	                    'name' => 'youtube_user',
	                    'default' => "PavoThemes",
						'desc' => 'Example: PavoThemes'
                	 ),
					 
					 array(
	                    'type' => 'select',
	                    'label' => $this->l( 'Team type' ),
	                    'name' => 'team_type',
	                    'desc'  => 'Select team type',
	                    'options' => array(  'query' => array(
	                        array('id' => 'team-v1', 'name' => $this->l('Team v1')),
                          	array('id' => 'team-v2', 'name' => $this->l('Team v2')),
                          	array('id' => 'team-v3', 'name' => $this->l('Team v3')),
	                    ),
	                    'id' => 'id',
	                    'name' => 'name' ),
	                    'default' => "",
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
			$this->load->model('tool/image');
			$this->model_tool_image->resize('no_image.png', 100, 100);
			$placeholder  = $this->model_tool_image->resize('no_image.png', 100, 100);
		//	d( $this->token );
			$string = '



					 <script type="text/javascript">
						$(".imageupload").WPO_Gallery({key:"'.$key.'",gallery:false,placehold:"'.$placeholder.'",baseurl:"'.HTTP_CATALOG . 'image/'.'" } );
					</script>

			';
			return  '<div id="imageslist'.$key.'">'.$helper->generateForm( $this->fields_form ) .$string."</div>" ;
		}

		public function renderContent(  $args, $setting ){
			
			$t  = array(
				'name'=> 'Pavothemes',
				'job_title'   	   => '',
				'facebook_use'     => 'pavothemes',
				'twidget_id'   => '366766896986591232',
				'htmlcontent' => '',
				'pinterest_user'   	   => '',
				'google_plus' => 'pavothemes',
				'vimeo_user'   	   => '',
				'youtube_user'   	   => 'pavothemes',
				'team_type' => 'team-v1'
			);

			$setting = array_merge( $t, $setting );

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';

			$setting['htmlcontent'] = isset($setting['htmlcontent_'.$languageID])?($setting['htmlcontent_'.$languageID]): '';

			$url = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? HTTPS_SERVER : HTTP_SERVER;
	        $url .= 'image/';

			$setting['iconurl'] = $url.$setting['iconfile'];
			
			$output = array('type'=>'image','data' => $setting );
			
	  		return $output;
		}
	}
?>