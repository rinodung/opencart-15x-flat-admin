<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		
		
		$this->data['text_see_details'] = $this->language->get('text_see_details');
		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_middle_1',
			'common/content_middle_2',
			'common/content_bottom',
			'common/content_bottom_2',
			'common/footer',
			'common/header',
		);
										
		$this->response->setOutput($this->render());
	}
}
?>