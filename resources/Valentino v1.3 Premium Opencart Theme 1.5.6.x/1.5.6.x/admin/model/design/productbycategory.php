<?php
class ModelDesignProductByCategory extends Model {
	
	public function getCategories(){
				// Menu
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$categories = array();
					
		$categories = $this->model_catalog_category->getCategories(0);

		
		foreach ($categories as $category) {
			if (isset($category['top']) && $category['top']) {
				// Level 2
				$children_data = array();
				
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				
				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);
					
					$product_total = $this->model_catalog_product->getTotalProducts($data);
									
					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
						'category_id'=>$category['category_id'],
					);
				}
				
				// Level 1
				$categories[] = array(
					'name'     => $category['name'],
					'category_id'=>$category['category_id'],
					'children' => $children_data,
				);
			}
		
		}

		return $categories;
	}
}
?>