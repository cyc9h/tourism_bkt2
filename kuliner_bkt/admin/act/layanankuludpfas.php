<?php
include ('../inc/connect.php');

$id	= $_POST['id'];
$facility = $_POST['facility'];

$sql  = "update facility_culinary set facility='$facility' where id='$id'";
$insert = mysqli_query($conn, $sql);

if ($insert){
	header("location:../?page=fasculinary");
}else{
	echo 'error';
}
?>