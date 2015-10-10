<?php
class ControllerCommonFooter extends Controller {   
	protected function index() {
		$this->language->load('common/footer');

		$this->data['text_footer'] = sprintf($this->language->get('text_footer'), VERSION);

		$this->template = 'flat-admin/common/footer.tpl';

		$this->render();
	}
}
?>