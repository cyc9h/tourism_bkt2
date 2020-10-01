<?php
include ('../inc/connect.php');

$edit = mysqli_query($conn, "update admin set role='C' where username='$_GET[user]'");

if($edit){
	header('location:http://localhost/tourism_pdg//kuliner_pdg/index.php');
}
