<?php
session_start();
$connect = mysql_connect('localhost', 'root', '', 'upivt');
    mysql_select_db('upivt', $connect);
$error ='';
if(isset($_POST['submit'])){
	if(empty($_POST['username']) || empty($_POST['password'])){
		$error = "Username or Password is invalid";
		echo $error;
	}
} else {

	$username = $_POST['username'];		
	$password = $_POST['password'];		

	
	$query = mysql_query("SELECT * from user WHERE username = '$username' AND password = '$password'",$connect) or die ('Unable to run query:'.mysql_error());;
	$rows = mysql_num_rows($query);
	if($rows == 1){
		$_SESSION['login_user'] = $username;
		header("location: profile.php");
	} else {
		$error = "Username or Password is invalid";
		echo $error;
	}

}

?>