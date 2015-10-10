<?php 

$query['pavmegamenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavmegamenu' and `key` = 'pavmegamenu_module'";

$query['pavmegamenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavmegamenu_params' and `key` = 'params'";
$query['pavmegamenu'][] =  " 
INSERT INTO `".DB_PREFIX ."setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(0, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{\"submenu\":1,\"subwidth\":650,\"id\":2,\"align\":\"aligned-left\",\"group\":0,\"cols\":3,\"rows\":[{\"cols\":[{\"widgets\":\"wid-64\",\"colwidth\":4},{\"widgets\":\"wid-62\",\"colwidth\":8}]}]},{\"submenu\":1,\"subwidth\":700,\"id\":5,\"align\":\"aligned-left\",\"group\":0,\"cols\":1,\"rows\":[{\"cols\":[{\"widgets\":\"wid-65\",\"colwidth\":3},{\"widgets\":\"wid-60\",\"colwidth\":5},{\"widgets\":\"wid-66\",\"colwidth\":4}]}]},{\"submenu\":1,\"id\":19,\"align\":\"aligned-left\",\"group\":0,\"cols\":1,\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]}]', 0);
";

$query['pavblog'][] ="
INSERT INTO `".DB_PREFIX ."layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(33, 12, 0, 'pavblog/');
";
$query['pavblog'][] ="
INSERT INTO `".DB_PREFIX ."layout` (`layout_id`, `name`) VALUES
(14, 'Pav Blog');
";
?>

