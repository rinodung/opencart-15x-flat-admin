<?php
class ControllerModuleCategoryAccordion extends Controller {
	protected $category_id = 0;
	protected $parent_id = 0;
	protected $path = array();
	
	/*------------------------------------------------------------------------------*/

	protected function index() {
		$this->language->load('module/category_accordion');
	   	$this->data['heading_title'] = $this->language->get('heading_title');
		$this->load->model('catalog/category');
		
		if (isset($this->request->get['path'])) {
			$this->path = explode('_', $this->request->get['path']);
			
			$this->category_id = end($this->path);
		}
		
		$this->data['category_accordion'] = $this->loadCategories(0, '', $this->category_id);
		$this->data['category_accordion_cid'] = $this->category_id;
		$this->data['category_accordion_jquery_path'] = $this->config->get('config_url') . '/catalog/view/javascript/jquery';
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category_accordion.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/category_accordion.tpl';
		} else {
			$this->template = 'default/template/module/category_accordion.tpl';
		}
		
		$this->render();
	}
	
	/*------------------------------------------------------------------------------*/

	protected function loadCategories($parent_id, $current_path = '', $cid = '') {
		$category_id = array_shift($this->path);
		$this->getCategoriesFromdb($category_id);
		
		$results = $this->model_catalog_category->getCategories($parent_id);
		
		$ret_string = '';
		if ($results) { 
			if ($parent_id == 0) {
				$ret_string .= '<ul id="cat_accordion">'; 
			} else {
				$ret_string .= '<ul>'; 
			}
		}
		
		foreach ($results as $result) {	
			if (!$current_path) {
				$new_path = $result['category_id'];
			} else {
				$new_path = $current_path . '_' . $result['category_id'];
			}
			
			$ret_string .= '<li class="custom_id' . $result['category_id'] . '">';
			
			$children = '';
			$children = $this->loadCategories($result['category_id'], $new_path);
			
			if ($cid == $result['category_id']) {
				$classactive = 'active';
			} else {
				$classactive = '';
			}
			
			
			if ($children) { 
				$ret_string .= '<a class="' . $classactive . '" href="' . $this->url->link('product/category','path=' .  $new_path)  . '">' . $result['name'] . '</a> <span class="down"></span>';
			} else { 
				$ret_string .= '<a class="' . $classactive . '" href="' . $this->url->link('product/category','path=' .  $new_path)  . '">' . $result['name'] . '</a>';
			}			
			
        	$ret_string .= $children;
        	$ret_string .= '</li>'; 
		}
 		
		if ($results) $ret_string .= '</ul>'; 
		return $ret_string;
	}
	
	/*------------------------------------------------------------------------------*/
	
	protected function getCategoriesFromdb($category_id) {
		if($category_id <=0) return false;
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");
		
		if (isset($query->row['parent_id'])) {
			$this->parent_id = $category_id;
		} else { 
			$this->getCategoriesFromdb(isset($query->row['parent_id']));
		}
	}	
}
?>