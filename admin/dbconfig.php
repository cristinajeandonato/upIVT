<?php
	$connect = mysql_connect('localhost', 'root', '') or die('Cannot connect to server.');
	mysql_select_db('upivt', $connect) or die('Could not connect to database');
 ?>