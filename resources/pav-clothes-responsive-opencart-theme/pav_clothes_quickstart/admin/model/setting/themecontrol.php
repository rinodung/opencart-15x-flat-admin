<?php
class ModelSettingThemecontrol extends Model {
	function getExtensions($type) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "extension WHERE `type` = '" . $this->db->escape($type) . "'");

		return $query->rows;
	}

	public function getLayoutModules($layout_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "layout_module WHERE layout_id = '" . (int)$layout_id . "' ORDER BY `sort_order` ");

		return $query->rows;
	}

	public function checkModifycation(){

		$modify =  DIR_SYSTEM . 'pavothemes/ocmod/pavoframework.ocmod.xml';
		$content = file_get_contents( $modify  ); 
		 

		$dom = new DOMDocument('1.0', 'UTF-8');
		$dom->preserveWhiteSpace = false;
		$dom->loadXml($content );

		$name = $dom->getElementsByTagName('name')->item(0)->textContent; 
		$code = $dom->getElementsByTagName('code')->item(0)->textContent; 


		$query = $this->db->query( "SELECT * FROM " . DB_PREFIX . "modification WHERE  `code` LIKE '%".strip_tags($code)."%'" );

		if( count( $query->rows ) <=0 ){
			$data = array(
				'name' => $name,
				'author' => 'pavothemes',
				'version' => 1.0,
				'link'	  =>'http://www.pavothemes.com',
				'code'	  => $code,
				'status'  => 1,
				'date_added' => date('Y-m-d')
			);
			
			$this->load->model('extension/modification');
			$this->model_extension_modification->addModification( $data  );
			return true;
		}
		return false;
	}
}
?>