<?php
include ('../inc/connect.php');
$id_info = $_GET['id_informasi'];
//echo "$id_info --> id_info";

	$sql1   = "delete from information_admin where id_informasi = $id_info";
	$delete1 = mysqli_query($conn, $sql1);
	if ($delete1){
		echo "<script>alert ('Data Successfully Delete');</script>";
	}
	else{
		echo "<script>alert ('Error');</script>";
	}
	
	echo "<script>eval(\"parent.location='../'\");</script>";
?>