<?php
include ('../inc/connect.php');
session_start();
if(isset($_POST['username'])){
	$username = $_POST['username'];
	$password = $_POST['password'];
	$pass = md5(md5($password));
	$sql = mysqli_query($conn, "SELECT * FROM admin WHERE username='$username' and password='$pass'");
	$num = mysqli_num_rows($sql);
	$dt = mysqli_fetch_array($sql);
	if($num==1){
		$_SESSION['username'] = $username;

		if($dt['role']=='A'){
			$_SESSION['A'] = true;
			?><script language="JavaScript">document.location='../'</script><?php
		}
		
		if($dt['role']=='P'){
			$_SESSION['P'] = true;
			$_SESSION['id']=$dt['id']; 
			$_SESSION['name']=$dt['name']; 
			$query=mysqli_query($conn, "select * from culinary_place where id='$dt[id]'"); 
			$data=mysqli_fetch_assoc($query); 
			$_SESSION['id']=$data['id'];
			?><script language="JavaScript">document.location='../indexu.php'</script><?php
		}
		if($dt['role']=='C'){
			$_SESSION['C'] = true;
			$_SESSION['id']=$dt['id']; 
			$_SESSION['name']=$dt['name']; 
			$query=mysqli_query($conn, "select * from culinary_place where id='$dt[id]'"); 
			$data=mysqli_fetch_assoc($query); 
			$_SESSION['id']=$data['id'];
			?><script language="JavaScript">document.location='../../index.php'</script><?php
		}
	}else{
		//console.log('gagal');
		echo "<script>
		alert (' Maaf Login Gagal, Silahkan Isi Username dan Password Anda Dengan Benar');
		eval(\"parent.location='../login.php '\");	
		</script>";
	}
}
?>