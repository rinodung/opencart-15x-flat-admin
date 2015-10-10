<?php
class ControllerModulepavbannerbuilder extends Controller {

	private $mdata = array();

	public function index($setting) {
		$this->load->model('tool/image');
		$this->load->model('design/banner');

		$d = array("banner_layout" => 1, "prefix" => '');
		$setting = array_merge($d, $setting);

		
		$this->mdata['objimg'] = $this->model_tool_image;
		$layouts = ( trim($setting['layout']) );
		if( empty($layouts) ){
			$this->mdata['layouts']  = array();
		}else {
			$this->mdata['layouts'] = $layouts;
		}
		$tpl = 'pavbannerbuilder.tpl';

		if( isset($setting['template']) ){
			$tpl = 'pavbannerbuilder/'.$setting['template'].'.tpl'; 
		}	
		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavbannerbuilder.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavbannerbuilder.css');
		} else {
			// $this->document->addStyle('catalog/view/theme/default/stylesheet/pavbannerbuilder.css');
		}

		$layouts = json_decode( $layouts );

		$this->mdata['layouts'] = $layouts;
		$this->mdata['url'] =  $this->config->get('config_secure') ? $this->config->get('config_ssl') : $this->config->get('config_url');
		$title = isset( $setting['module_title'][$this->config->get('config_language_id')] ) ? $setting['module_title'][$this->config->get('config_language_id')]:"";
 		$this->mdata['class'] = isset($setting['class'])?$setting['class']:'';
 		$this->mdata['heading'] = $title;

 

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/'.$tpl)) {
			$path =  DIR_TEMPLATE.$this->config->get('config_template') . '/template/module/_bannerbuilder.tpl';
			$template = $this->config->get('config_template') . '/template/module/'.$tpl;
		} else {
			$path =  DIR_TEMPLATE.'default/template/module/_bannerbuilder.tpl';
			$template = 'default/template/module/'.$tpl;
		}

		$this->mdata['template'] = $template;
		$this->mdata['template_builder'] = $path;

		return $this->load->view($template, $this->mdata);
	}
}
?>