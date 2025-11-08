<?php
//connectoin with db
$db="shop";
$link= mysqli_connect("localhost", "root", "", $db);
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/shop/');
define('SITE_PATH','http://127.0.0.1/shop/');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'product/');
if(!$link){
	die(mysqli_error($link).mysqli_errno($link));
}
?>