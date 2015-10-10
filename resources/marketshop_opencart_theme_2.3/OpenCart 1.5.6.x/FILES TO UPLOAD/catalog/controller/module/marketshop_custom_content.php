<?php  
class ControllerModuleMarketshopcustomcontent extends Controller {
	protected function index($setting) {
		//$this->language->load('module/marketshop_custom_content');
		
    	//$this->data['heading_title'] = sprintf($this->language->get('heading_title'), $this->config->get('config_name'));
    	
		$this->data['mccm_title'] = ($setting['mccm_title'][$this->config->get('config_language_id')]);
		$this->data['message'] = html_entity_decode($setting['description'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/marketshop_custom_content.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/marketshop_custom_content.tpl';
		} else {
			$this->template = 'default/template/module/marketshop_custom_content.tpl';
		}
		
		$this->render();
	}
}
?>