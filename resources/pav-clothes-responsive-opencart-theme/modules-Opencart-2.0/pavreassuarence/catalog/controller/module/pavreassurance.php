<?php
/******************************************************
 * @package Pav bannermanager module for Opencart 1.5.x
 * @version 1.0
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Feb 2012 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/


class ControllerModulePavreassurance extends Controller {

	private $data = array();

	public function index($setting) {

		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavreassurance.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavreassurance.css');
		}

		$language = $this->config->get('config_language_id');
		$prefix_class = isset($setting['prefix']) ? $setting['prefix'] : '';

		$this->data['prefix_class'] = $prefix_class;
		$this->data['language'] = $language;

		$reassurances = isset($setting['pavreassurances'])?$setting['pavreassurances']:array();

		$result = array();
		if (!empty($reassurances)) {
			foreach ($reassurances as $key=>$value) {
				$result[$key]['select_icon'] = $value['select_icon'];
				$result[$key]['reassurance_prefixclass'] = isset($value['reassurance_prefixclass'])?$value['reassurance_prefixclass']:'';
				$result[$key]['title'] = isset($value['title'][$language])?$value['title'][$language]:'';
				$result[$key]['caption'] = isset($value['caption'][$language])?$value['caption'][$language]:'';
				$result[$key]['detail'] = isset($value['detail'][$language])?$value['detail'][$language]:'';
			}
		}

		$this->data['pavreassurances'] = $result;


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/pavreassurance.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/pavreassurance.tpl',  $this->data);
		} else {
			return $this->load->view('default/template/module/pavreassurance.tpl', $this->data);
		}
	}
}