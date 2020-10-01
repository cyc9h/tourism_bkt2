<?php 
session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
<script src="assets/js/chart-master/Chart.js"></script>
    <script src="assets/js/jquery.js"></script>
    <script src="../config_public.js"></script>
    <script src="map.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBNnzxae2AewMUN0Tt_fC3gN38goeLVdVE"></script>
<script>
function detailinfokul(id144){  
  
   $('#info').empty();
   $('#tampilangkotsekitarik').hide();
   $("#hasilrute").hide();
   $('#hasilcaridetculi').empty();
   $('#hasildet').show();
   $('#hasilcaridetculi1').show();
   $('#hasilcaridet').empty();
   $('#hasilcaridet1').show();
   $('#detgal').empty();
   console.log(id144);
   hapusInfo();
   hapusrouteangkot();
   clearroute2();
   clearroute();
   hapusMarkerTerdekat();
   console.log('uuu');
       $.ajax({ 

      url: server+'detailinfokul.php?info='+id144, data: "", dataType: 'json', success: function(rows)
        { 
         for (var i in rows.data) 
          { 
            
            var row = rows.data[i];
            var id = row.id;
            var name = row.name;
            var capacity = row.capacity;
            var address=row.address;
            var cp=row.cp;
            var open = row.open;
            var close = row.close;
            var fasilitas = row.fasilitas; 
            var latitude  = row.latitude; ;
            var longitude = row.longitude ;
            centerBaru = new google.maps.LatLng(row.latitude, row.longitude);
            console.log(latitude);
            console.log(longitude);
            //map.setCenter(centerBaru);
           // map.setZoom(18); 
            //$('#hasilcaridet').append("<tr><td><b> Facility </b></td><td>:</td><td> "+fasilitas+"</td></tr>");
            console.log(name);
            $('#detgal').append("<tr><td style='text-align:left'>Name</td><td>:</td><td style='text-align:left'> "+name+"</td></tr><tr><td style='text-align:left'>Address</td><td>:</td><td style='text-align:left'> "+address+"</td></tr><tr><td style='text-align:left'>Phone</td><td>:</td><td style='text-align:left'> "+cp+"</td></tr><tr><td style='text-align:left'>Open</td><td>:</td><td style='text-align:left'> "+open+"</td></tr><tr><td style='text-align:left'>Close</td><td>:</td><td style='text-align:left'> "+close+"</td></tr><br><tr><td style='text-align:left'>Capacity</td><td>:</td><td style='text-align:left'> "+capacity+"</td></tr><br><tr><td style='text-align:left'>Facility</td><td>:</td><td style='text-align:left'> "+fasilitas+"</td></tr>");            
                if (address===null)
                    {
                      address="tidak ada";
                    } 
          }  //endfor

        }
      }); 


}  </script>

<script>
    let id='<?php echo $_GET['idgallery'];?>'
    detailinfokul(id);
  </script>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <title>Halal Tourism - Padang</title>

    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/js/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    <link href="assets/css/style.css" rel="stylesheet">
    
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    
    
    <!--  Slide -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
    .mySlides {display:none}
    .w3-left, .w3-right, .w3-badge {cursor:pointer}
    .w3-badge {height:13px;width:13px;padding:0}
    </style>

    

    <!--LOADER-->
    <style>
    #loader {
      border: 16px solid #f3f3f3;
      border-radius: 50%;
      border-top: 16px solid #3498db;
      width: 40px;
      margin: 5px;
      height: 40px;
      -webkit-animation: spin 2s linear infinite;
      animation: spin 2s linear infinite;
    }

    @-webkit-keyframes spin {
      0% { -webkit-transform: rotate(0deg); }
      100% { -webkit-transform: rotate(360deg); }
    }

    @keyframes spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
    }
    </style>
  
  </head>

<body onload="init();detailinfokul('<?php echo $_GET["idgallery"] ?>');">

  <section id="container" >
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation" style="color: #ffffff"></div>
      </div>

      <!--logo start-->
        <a class="logo"><p><img src="">&nbsp<b>WEB</b><b style="font-size: 17px">GIS</b> - <b>C</b>ulinary</p></a>
        <div class="top-menu">
          <ul class="nav pull-right top-menu">
            <li><div id="loader" style="display:none"></div></li>
            <li id="loader_text" style="margin-top:13px;display:none"><b>Loading</b></li>
          </ul>
        </div>
        <h4>
        
        <!-- <div class="top-menu">
          <ul class="nav pull-right" style="margin-top: 6px">
            <a href="admin/" class="logo1" title="Login" ><img src="image/login.png"> -->
        <!-- <i class="fa fa-user"></i> -->
        <!-- <span>Login</span></a>
              </ul>
            </div></h4> -->
      </header>

      <aside>

          <div id="sidebar"  class="nav-collapse " >
              <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
              
              <p class="centered"><a href="#"><img src="assets/img/jam.jpg" class="img-circle" width="150" height="120"></a></p>
              <h5 class="centered">Hi,
              <?php 
                if (isset($_SESSION['C']) == true) {
                  echo $_SESSION['username']; 
                }
                else{
                  echo "Visitor";
                }
              
              ?>&nbsp!</h5>

              <li class="sub-menu">
                      <a class="active" href="index.php">
                          <i class="fa fa-hand-o-left"></i>
                          <span>Back</span>
                      </a>
                  </li>
        </ul>
          </div>
      </aside>

      <section id="main-content">
        <section class="wrapper site-min-height">
          <div class="row">
          <div class="col-lg-12 main-chart"> 
           <div class="col-sm-12">
              <div class="col-sm-6"> <!-- information -->
                  <section class="panel">
                    <header class="panel-heading">
                      <h2 class="box-title" style="text-transform:capitalize;"><b> Detail Information</b></h2>
                    </header>
                    <div class="panel-body">
                      <table id="detgal" class="table">
                        <tbody  style='vertical-align:top;'>
                        </tbody>          
                      </table>
                    </div>
                  </section>

                  <section class="panel">

                    <header class="panel-heading">
                      <h2 class="box-title" style="text-transform:capitalize;"><b> Info</b></h2>
                    </header>

                    <?php 
                     require 'connect.php';
                      $id = $_GET["idgallery"];
                     // echo "ini $id";

                      if(strpos($id,"RM") !== false){
                        $sqlreview = "SELECT * from information_admin where id_kuliner = '$id'";
                      }elseif (strpos($id,"SO") !== false) {
                        $sqlreview = "SELECT * from information_admin where id_souvenir = '$id'";
                      }elseif (strpos($id, "IK") !== false) {
                        $sqlreview = "SELECT * from information_admin where id_ik = '$id'";
                      }elseif (strpos($id,"H") !== false) {
                         $sqlreview = "SELECT * from information_admin where id_hotel = '$id'";
                      }elseif (strpos($id,"tw")!== false) {
                         $sqlreview = "SELECT * from information_admin where id_ow = '$id'";
                      }
                        
                      $result = mysqli_query($conn, $sqlreview);
                    ?>
                    <table class="table">
                      <thead><th>Date</th><th class="centered">Info</th></thead>
                    <?php  
                      while ($rows = mysqli_fetch_array($result)) 
                        {
                          $tgl = $rows['tanggal'];
                          $info = $rows['informasi'];
                          $id_info =$rows['id_informasi'];
                          echo "<tr><td>$tgl</td><td>$info</td><td></td></tr>";
                        }
                    

                       ?>               
                    
                  </table>

                    <div class="panel-body">
                      <!-- <table id="detgal" class="table">
                        <tbody  style='vertical-align:top;'>

                        <tr><td>Name :</td><td><textarea cols="30" rows="1"></textarea></td></tr>
                        <tr><td>Comment :</td><td><textarea cols="30" rows="5"></textarea></td></tr>
                        <tr><td><input type="submit" value="Post Comment"/></td><td></td></tr>
                          
                        </tbody>          
                      </table> -->

                      
                    </div>
                  </section>

                  <section class="panel">

                    <header class="panel-heading">
                      <h2 class="box-title" style="text-transform:capitalize;"><b> Visitor's Reviews</b></h2>
                    </header>

                    <div class="panel-body">

                      <table id="detgal" class="table">

                      <form method="POST" action="insert_comment.php">

                          <tbody  style='vertical-align:top;'>
                          <input type="hidden" name="id" value="<?php echo $_GET['idgallery']; ?>">
                          <?php 
                          if (isset($_SESSION['C']) == true)  {
                            $username = $_SESSION['username'];
                            echo "<tr><td>Comment :</td><td><textarea cols='30' rows='5' name='comment'></textarea></td></tr>
                          <tr><td><input type='submit' value='Post Comment'/></td>
                          <td><input name='nama' value='$username' hidden></td>
                          </tr>";
                          }
                          ?>
                          
                          </tbody>          
                      </table>
                      </form>

                      <?php 

                      require 'connect.php';
                      $id = $_GET['idgallery']; 

                      if (strpos($id,"RM") !== false) {
                        $sqlreview = "SELECT * FROM review where id_kuliner = '$id'";
                      } elseif (strpos($id,"SO") !== false) {
                        $sqlreview = "SELECT * FROM review where id_souvenir = '$id'";
                      } elseif (strpos($id,"IK") !== false) {
                        $sqlreview = "SELECT * FROM review where id_ik = '$id'";
                      } elseif (strpos($id,"H") !== false) {
                        $sqlreview = "SELECT * FROM review where id_hotel = '$id'";
                      } elseif (strpos($id,"OW") !== false) {
                        $sqlreview = "SELECT * FROM review where id_ow = '$id'";
                      }


                      $result = mysqli_query($conn, $sqlreview);
                      ?>

                      <table class="table"> 
                      <?php 
                      while ($rows = mysqli_fetch_array($result))
                      {
                        $nama = $rows ['name'];
                        $komen = $rows['comment'];
                        echo "<tr><td>Name</td><td>:</td><td>$nama</td></tr><tr><td>Comment</td><td>:</td><td>$komen</td></tr>";
                      }

                      
                       ?>
                      </table>
                        




                      
                    </div>
                  </section>
            
              </div>

              <div class="col-sm-6">
                <div class="row">
                  <div class="col-sm-12"> <!-- gallery -->
                    <section class="panel">
                        <div class="panel-body">
                            <a class="btn btn-compose">Gallery</a>
                            <div class="content" style="text-align:center;">
                            <div class="html5gallery" style="max-height:700px; overflow:auto;" data-skin="horizontal" data-width="350" data-height="250" data-resizemode="fit">  
                              
                            <?php
                            // require '../connect.php';

                            // $id = $_GET["idgallery"];
                            if (strpos($id,"H") !== false) {  //Hotel

                              $querysearch  ="SELECT a.id, b.gallery_hotel FROM hotel as a left join hotel_gallery as b on a.id=b.id where a.id='$id' ";       
                              $hasil=mysqli_query($conn, $querysearch);
                              while($baris = mysqli_fetch_assoc($hasil)){
                                if(($baris['gallery_hotel']=='-')||($baris['gallery_hotel']=='')){
                                  echo "<a href='../_foto/foto.jpg'><img src='../_foto/foto.jpg' ></a>";
                                }
                                else{
                                  echo "<a href='../_foto/".$baris['gallery_hotel']."'><img style='width:100%' src='../_foto/".$baris['gallery_hotel']."'></a>";
                                }
                              }
                    
                            } elseif (strpos($id,"tw") !== false) {  //Tourism

                              $querysearch  ="SELECT a.id, b.gallery_tourism FROM tourism as a left join tourism_gallery as b on a.id=b.id where a.id='$id' ";       
                              $hasil=mysqli_query($conn, $querysearch);
                              while($baris = mysqli_fetch_assoc($hasil)){
                                if(($baris['gallery_tourism']=='-')||($baris['gallery_tourism']=='')){
                                  echo "<a href='../_foto/foto.jpg'><img src='../_foto/foto.jpg' ></a>";
                                }
                                else{
                                  echo "<a href='../_foto/".$baris['gallery_tourism']."'><img style='width:100%' src='../_foto/".$baris['gallery_tourism']."'></a>";
                                }
                              }

                            } elseif (strpos($id,"SO") !== false) {  //Souvenir

                              $querysearch  ="SELECT a.id, b.gallery_souvenir FROM souvenir as a left join souvenir_gallery as b on a.id=b.id where a.id='$id' ";       
                              $hasil=mysqli_query($conn, $querysearch);
                              while($baris = mysqli_fetch_assoc($hasil)){
                                if(($baris['gallery_souvenir']=='-')||($baris['gallery_souvenir']=='')){
                                  echo "<a href='../_foto/foto.jpg'><img src='../_foto/foto.jpg' ></a>";
                                }
                                else{
                                  echo "<a href='../_foto/".$baris['gallery_souvenir']."'><img style='width:100%' src='../_foto/".$baris['gallery_souvenir']."'></a>";
                                }
                              }

                            } elseif (strpos($id,"RM") !== false) {  //Kuliner

                              $querysearch  ="SELECT a.id, b.gallery_culinary FROM culinary_place as a left join culinary_gallery as b on a.id=b.id where a.id='$id' ";       
                              $hasil=mysqli_query($conn, $querysearch);
                              while($baris = mysqli_fetch_assoc($hasil)){
                                if(($baris['gallery_culinary']=='-')||($baris['gallery_culinary']=='')){
                                  echo "<a href='../_foto/foto.jpg'><img src='../_foto/foto.jpg' ></a>";
                                }
                                else{
                                  echo "<a href='../_foto/".$baris['gallery_culinary']."'><img style='width:100%' src='../_foto/".$baris['gallery_culinary']."'></a>";
                                }
                              }

                            } elseif (strpos($id,"M") !== false) {  //Worship

                              $querysearch  ="SELECT a.id, b.gallery_worship_place FROM worship_place as a left join worship_place_gallery as b on a.id=b.id where a.id='$id' ";       
                              $hasil=mysqli_query($conn, $querysearch);
                              while($baris = mysqli_fetch_assoc($hasil)){
                                if(($baris['gallery_worship_place']=='-')||($baris['gallery_worship_place']=='')){
                                  echo "<a href='../_foto/foto.jpg'><img src='../_foto/foto.jpg' ></a>";
                                }
                                else{
                                  echo "<a href='../_foto/".$baris['gallery_worship_place']."'><img style='width:100%' src='../_foto/".$baris['gallery_worship_place']."'></a>";
                                }
                              }

                            } elseif (strpos($id,"IK") !== false) {  //Industry

                              $querysearch  ="SELECT a.id, b.gallery_industry FROM small_industry as a left join industry_gallery as b on a.id=b.id where a.id='$id' ";       
                              $hasil=mysqli_query($conn, $querysearch);
                              while($baris = mysqli_fetch_assoc($hasil)){
                                if(($baris['gallery_industry']=='-')||($baris['gallery_industry']=='')){
                                  echo "<a href='../_foto/foto.jpg'><img src='../_foto/foto.jpg' ></a>";
                                }
                                else{
                                  echo "<a href='../_foto/".$baris['gallery_industry']."'><img style='width:100%' src='../_foto/".$baris['gallery_industry']."'></a>";
                                }
                              }

                            } elseif (strpos($id,"R") !== false) {  //Restoran

                              $querysearch  ="SELECT a.id, b.gallery_restaurant FROM restaurant as a left join restaurant_gallery as b on a.id=b.id where a.id='$id' ";       
                              $hasil=mysqli_query($conn, $querysearch);
                              while($baris = mysqli_fetch_assoc($hasil)){
                                if(($baris['gallery_restaurant']=='-')||($baris['gallery_restaurant']=='')){
                                  echo "<a href='../_foto/foto.jpg'><img src='../_foto/foto.jpg' ></a>";
                                }
                                else{
                                  echo "<a href='../_foto/".$baris['gallery_restaurant']."'><img style='width:100%' src='../_foto/".$baris['gallery_restaurant']."'></a>";
                                }
                              }

                            } else {  //Angkot

                              $querysearch  ="SELECT a.id, b.gallery_angkot FROM angkot as a left join angkot_gallery as b on a.id=b.id where a.id='$id' ";  
                              //echo "$querysearch";     
                              echo "<script language='javascript'>alert('$querysearch');</script>";   
                              $hasil=mysqli_query($conn, $querysearch);
                              while($baris = mysqli_fetch_assoc($hasil)){
                                if(($baris['gallery_angkot']=='-')||($baris['gallery_angkot']=='')){
                                  echo "<a href='../_foto/foto.jpg'><img src='../_foto/foto.jpg' ></a>";
                                }
                                else{
                                  echo "<a href='../_foto/".$baris['gallery_angkot']."'><img style='width:100%' src='../_foto/".$baris['gallery_angkot']."'></a>";
                                }
                              }

                            }
                        ?>
                                      
                            </div>
                            </div>
                        </div>
                    </section>
                    
                  </div>
                  <div class="col-sm-12"> <!-- peta -->
                    <div class="white-panel pns">

                      <header class="panel-heading" style="float:left">
                      <label style="color: black; margin-right:20px">Google Map with Location List</label>
                  <button type="button" onclick="posisisekarang()" class="btn btn-default " data-toggle="tooltip" id="posisinow" title="Posisi Saya" style="margin-right: 7px;" ><i class="fa fa-location-arrow" style="color:black;" > </i>
                      </button>

                       <button type="button" onclick="lokasimanual()" class="btn btn-default"  data-toggle="tooltip" id="posmanual" title="Posisi Manual" style="margin-right: 7px;"><i class="fa fa-map-marker" style="color:black;"></i>
                      </button>
                                            
                       <!-- <label id="tombol">
                       <a type="button" onclick="legenda()" id="showlegenda" class="btn btn-default" data-toggle="tooltip" title="Legenda" style="margin-right: 7px;"><i class="fa fa-eye"></i>
                       </a>
                       </label> -->
                              </header>
                              <div class="row">
                                 <div class="col-sm-6 col-xs-6"></div>
                               </div>                        
                               <div id="map" class="centered" style="height:260px">
                               </div>
                            </div>
                    
                    
                  </div>
                  
                </div>
                
              </div>
          
            </div>
          </div>
        </div>

        </section>
      
      </section>

   
  </section>


    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="html5gallery/html5gallery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>
    <script src="map.js" type="text/javascript"></script>
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>
    <script src="assets/js/advanced-form-components.js"></script>      
    <script>

var slideIndex = 1;
//showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>

  </body>

  

</html>
