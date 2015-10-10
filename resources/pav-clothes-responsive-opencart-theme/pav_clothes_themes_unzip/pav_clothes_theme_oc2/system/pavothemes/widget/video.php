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


class PtsWidgetVideo extends PtsWidgetPageBuilder {

		public $name = 'video';
		public $group = 'others';
		
		public static function getWidgetInfo(){
			return  array('label' => 'Video Code', 'explain' => 'Make Video widget via putting Youtube Code, Vimeo Code', 'group' => 'others'  );
		}


		public function renderForm( $args, $data ){
			$helper = $this->getFormHelper();

			$this->fields_form[1]['form'] = array(
	            'legend' => array(
	                'title' => $this->l('Widget Form.'),
	            ),
	            'input' => array(
 
	                 array(
	                    'type' => 'text',
	                    'label' => $this->l('Video Link'),
	                    'name' => 'video_link',	        
	                    'default'=> 'http://www.youtube.com/watch?v=lzY4lkT8ElU',
	                    'autoload_rte' => false,
	                    'desc'	=> $this->l('Copy Youtube link or vimeo link and put here')
	                ),

	                array(
	                    'type' => 'text',
	                    'label' => $this->l('Width'),
	                    'name' => 'width',	        
	                    'default'=> '100%',
	                    'autoload_rte' => false,
	                    'desc'	=> $this->l('Enter Video Width in numberic (300) or percentage (100%)')
	                ),
	                array(
	                    'type' => 'text',
	                    'label' => $this->l('Height'),
	                    'name' => 'height',	        
	                    'default'=> '300',
	                    'autoload_rte' => false,
	                    'desc'	=> $this->l('Enter Video Width in numberic (300) or percentage (100%)')
	                ),
	                 array(
	                    'type' => 'text',
	                    'label' => $this->l('Sub Info'),
	                    'name' => 'subinfo',	        
	                    'default'=> '300',
	                    'lang' => true,
	          
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
        
        public function getYoubetuID($url) {
		    $pattern = 
		        '%^# Match any youtube URL
		        (?:https?://)?  # Optional scheme. Either http or https
		        (?:www\.)?      # Optional www subdomain
		        (?:             # Group host alternatives
		          youtu\.be/    # Either youtu.be,
		        | youtube\.com  # or youtube.com
		          (?:           # Group path alternatives
		            /embed/     # Either /embed/
		          | /v/         # or /v/
		          | /watch\?v=  # or /watch\?v=
		          )             # End path alternatives.
		        )               # End host alternatives.
		        ([\w-]{10,12})  # Allow 10-12 for 11 char youtube id.
		        $%x'
		        ;
		    $result = preg_match($pattern, $url, $matches);
		    if (false !== $result && isset($matches[1]) ) {
		        return $matches[1];
		    }
		    return false;
		}
		
        public function getHostInfo ($vid_link)
		{
		  // youtube get video id
			if (preg_match('#youtu#',$vid_link)) {
				return array( 'host_name'=>'youtube', 'original_key' => $this->getYoubetuID($vid_link) );
			}
			// vimeo get video id
			elseif (preg_match('#vimeo#',$vid_link)) { 

				if (preg_match('#(?<=/)([\d]+)#', $vid_link, $matches)){
			 		return array('host_name' => 'vimeo', 'original_key' => $matches[0]); 
				}
			}
		 	
		 	return false; 
		}

        public function renderContent(  $args, $setting ){
			
			$t  = array(
				'name'		   => '',
				'video_link'   => '',
				'width'        => '100%',
				'height'       => 300,
				'subinfo'	=> ''
 			);
			$setting = array_merge( $t, $setting );

			$languageID = $this->config->get('config_language_id');
			$setting['heading_title'] = isset($setting['widget_title_'.$languageID])?$setting['widget_title_'.$languageID]:'';
	 		
			$video = $this->getHostInfo( $setting['video_link'] );
 
			$setting['video_link'] = '';

			if( isset($video['host_name'])  ){
				$setting['video_link'] = $video['host_name'] == 'youtube'?'//www.youtube.com/embed/':'//player.vimeo.com/video/';
				$setting['video_link'] .= $video['original_key'];
			}  
			$setting['subinfo'] = $this->getValueByLang( $setting, 'subinfo' );
			 
			$output = array('type'=>'video','data' => $setting );
	  		return $output;
		}
	}