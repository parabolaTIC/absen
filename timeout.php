<<<<<<< HEAD
<?php
session_start();
function timer(){
	$time=1000;
	$_SESSION[timeout]=time()+$time;
}
function cek_login(){
	$timeout=$_SESSION[timeout];
	if(time()<$timeout){
		timer();
		return true;
	}else{
		unset($_SESSION[timeout]);
		return false;
	}
}
?>
=======
<?php
session_start();
function timer(){
	$time=1000;
	$_SESSION[timeout]=time()+$time;
}
function cek_login(){
	$timeout=$_SESSION[timeout];
	if(time()<$timeout){
		timer();
		return true;
	}else{
		unset($_SESSION[timeout]);
		return false;
	}
}
?>
>>>>>>> 334e962f67bae0a7a4a9203c6d07977d7cd2f49f
