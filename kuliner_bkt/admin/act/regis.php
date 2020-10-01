<?php
include ('../inc/connect.php');


$nama = $_POST['nama'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];
$cp = $_POST['hp'];
$address = $_POST['address'];
$pass = md5(md5($password));

    $cek_username = "SELECT * from admin where username = '$user'";
    $cek_username2 = "SELECT * from admin where username = '$user'";
        $query = mysqli_query($conn, $cek_username); $query2 = mysqli_query($conn, $cek_username2);
        if(mysqli_num_rows($query) == 0 && mysqli_num_rows($query2) == 0){
            $query = "insert into admin (username, password, hp, address, name, email) values ('".$username."','".$password."','".$cp."','".$address."','".$nama."','".$emailadd."')";
            $cek = mysqli_query($conn, $query);
            if($cek)
            {
              echo "<script>
              alert ('Anda berhasil registrasi');
            eval(\"parent.location='login.php'\");
            </script>";
            }
            else{
              echo "gagal";
            }
        }else {
            echo "<script>
                    alert ('Username sudah ada');
                    eval(\"parent.location='regis.php'\");
                    </script>";
        }    
    
?>

<!-- <?php
include ('../inc/connect.php');

$nama = $_POST['nama'];
$username = $_POST['username'];
$password = md5(md5($_POST['password']));
$cp = $_POST['hp'];
$address = $_POST['address'];
// $role = $_POST['role'];
$emailadd = $_POST['email'];

    $query = "insert into admin (username, password, hp, address, name, email) values ('".$username."','".$password."','".$cp."','".$address."','".$nama."','".$emailadd."')";

    $cek = mysqli_query($conn, $query);
  
$token = date("Ymdhi").$username;
$homepage = file_get_contents("http://localhost/kuliner_pdg/mailtemplate.php?token=$token&user=$username");

  if($cek)
  {
    require '../../../PHPMailer/class.phpmailer.php';
  
    $mail = new PHPMailer(); // create a new object
    $mail->isSMTP();
    $mail->SMTPDebug = 2;
    $mail->Host = "smtp.gmail.com";
    $mail->SMTPAuth = true;
  
    // But you can comment from here
    $mail->SMTPSecure = "tls";
    $mail->Port = 587;
    $mail->CharSet = "UTF-8";
    // To here. 'cause default secure is TLS.
  
    $mail->setFrom("widyaw1996@gmail.com", "SISTEM INFORMASI BKT Tourism");
    $mail->Username = "widyaw1996@gmail.com";
    $mail->Password = "Widya1996widya";
  
    $mail->Subject = "SISTEM INFORMASI BKT Tourism";
  
    $mail->addAddress("$emailadd", "$nama");
    $mail->msgHTML($homepage);
   
   if (!$mail->send()) {
  
  $mail->ErrorInfo;
  } else {
    header('location:http://localhost/kuliner_pdg/admin/checkemailjo.php');
  }
    
  }
  else{
    echo "gagal";
  }
?> -->