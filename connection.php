<?php
	$mysql_host = "mysql2.000webhost.com";
$mysql_database = "a3823538_nsbm";
$mysql_user = "a3823538_root";
$mysql_password = "admin7";
$prefix = "";
	$bd = mysql_connect($mysql_host, $mysql_user, $mysql_password) or die("Could not connect database");
	mysql_select_db($mysql_database, $bd) or die("Could not select database"); 
?>