<?php
class ModelAccountnewslettersubscribe extends Model {
	public function checkmailid($data) {
  	   
	   $query=$this->db->query("SELECT * FROM " . DB_PREFIX . "subscribe where email_id='".$data['subscribe_email']."'");
	   return $query->num_rows;
	}
	
	public function checkRegisteredUser($data) {
  	   
	   $query=$this->db->query("SELECT * FROM " . DB_PREFIX . "customer where email='".$data['subscribe_email']."'");
	   return $query->num_rows;
	}
	
	public function UpdateRegisterUsers($data,$status) {
  	   
	   $query=$this->db->query("UPDATE  " . DB_PREFIX . "customer SET newsletter ='".$status."' where email='".$data['subscribe_email']."'");

	}
	
	
	
	public function subscribe($data) {
	  	   
		   $this->db->query("INSERT INTO " . DB_PREFIX . "subscribe SET email_id='".$data['subscribe_email']."',name='".$data['subscribe_name']."',option1='".$this->db->escape(isset($data['option1'])?$data['option1']:'')."',option2='".$this->db->escape(isset($data['option2'])?$data['option2']:'')."',option3='".$this->db->escape(isset($data['option3'])?$data['option3']:'')."',option4='".$this->db->escape(isset($data['option4'])?$data['option4']:'')."',option5='".$this->db->escape(isset($data['option5'])?$data['option5']:'')."',option6='".$this->db->escape(isset($data['option6'])?$data['option6']:'')."'");
	}
	
	public function unsubscribe($data) {
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "subscribe WHERE email_id='".$data['subscribe_email']."'");
	}
   public function check_db(){
	   
	 $this->db->query("CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "subscribe (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_id` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `option1` varchar(225) NOT NULL,
  `option2` varchar(225) NOT NULL,
  `option3` varchar(225) NOT NULL,
  `option4` varchar(225) NOT NULL,
  `option5` varchar(225) NOT NULL,
  `option6` varchar(225) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_2` (`email_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;");

   }
}
?>
