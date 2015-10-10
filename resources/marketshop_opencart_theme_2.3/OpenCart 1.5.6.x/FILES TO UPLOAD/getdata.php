<?php
include('config.php');
$link = mysql_connect(DB_HOSTNAME,DB_USERNAME,DB_PASSWORD);
if (!$link) {
  die('Could not connect: ' . mysql_error());
}
mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'", $link);

if (!mysql_select_db(DB_DATABASE)) {
  echo "Unable to select mydbname: " . mysql_error();
  exit;
}

if(isset($_REQUEST['q']) && $_REQUEST['q']!=''){
       
   $q = mysql_real_escape_string($_REQUEST['q']);
   
   $lan = mysql_real_escape_string($_REQUEST['lan']);
   
   $sql = "select language_id from " . DB_PREFIX . "language where code = '".$lan."'";
   $res = mysql_query($sql);
   $row = mysql_fetch_array($res);
   
   $id = $row['language_id'];
   
   if(!isset($id)){ $id = 1; }
   
   $sql = "SELECT pd.name FROM " . DB_PREFIX . "product p," . DB_PREFIX . "product_description pd WHERE p.status = 1 AND p.product_id = pd.product_id AND language_id = '".$id."' AND UPPER(pd.name) like UPPER('%$q%') GROUP BY pd.product_id ORDER BY pd.name ASC";
   $res = mysql_query($sql);
   if(mysql_num_rows($res)>0){
       while($ro = mysql_fetch_assoc($res)){
           
           $name = str_replace( array( '\'', '"', ',' , ';', '<', '>','&quot','&'), ' ', $ro['name']);
       //$str[]= $name."\n";
	   echo $name."\n";
       }
   }    
   //echo json_encode($str);
}

?>