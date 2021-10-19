<?php
	
	define('db_host','localhost');
	define('db_user','root'); //user database
	define('db_pass',''); //passwd database
	define('db_name','stok_barang');
	
	mysql_connect(db_host,db_user,db_pass);
	mysql_select_db(db_name);
	
?>
