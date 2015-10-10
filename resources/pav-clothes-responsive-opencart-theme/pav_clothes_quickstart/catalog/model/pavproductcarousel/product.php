<?php
class ModelPavproductcarouselProduct extends Model {
  public function getMostviewedProducts($limit) {
  		$this->load->model('catalog/product');
		$product_data = array();
		
		$query = $this->db->query("SELECT p.product_id FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "' ORDER BY p.viewed DESC LIMIT " . (int)$limit);
		
		foreach ($query->rows as $result) { 		
			$product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
		}
					 	 		
		return $product_data;
	}

	public function getTopRatingProducts($limit) {

		$product_data = array();
		$sql = ("SELECT p.*, r.rating FROM " . DB_PREFIX . "review r 
				LEFT JOIN " . DB_PREFIX . "product p ON (r.product_id = p.product_id) 
				LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) 
				WHERE 
					p.date_available <= NOW() AND 
					p.status = '1' AND 
					r.status = '1' AND 
					pd.language_id = '" . (int)$this->config->get('config_language_id') . "' 
				ORDER BY r.rating DESC LIMIT 0," . (int)$limit);

		$query = $this->db->query($sql);

		if ($query->num_rows > 0) {
			foreach ($query->rows as $result) {
				$product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
				$product_data[$result['product_id']]['rating'] = $result['rating'];
			}
		}

		return $product_data;
	}

}