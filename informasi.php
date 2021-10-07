<?php
  include 'koneksiform.php';
  
  

  // if (!isset ($_SESSION['login'])){
  //   header ('location:login.php');
  // }
//   if($_SESSION['level']==""){
//     header("location:login.php?pesan=gagal");
// }

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />
    <!-- Boostrap icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">

    <!-- CSS -->
    <link rel="stylesheet" href="style.css" />


    <title>Informasi | TK Al-Muttaqin</title>
  </head>
  <style>
    .jumbotron {
      padding: 6rem;
      background-color: cornsilk;
    }
    .info {
      padding: 6rem;
    }

    .card {
      width: 70rem;
      margin-bottom: 3rem;
      padding-bottom: 2rem;
    }

    .col img{
      width: 30%;
    }

    @media screen and (max-width: 650px) {

      .card{
        transform: scale(1.0);
        margin-left: -5rem;
        margin-right: -6rem;
      }

      .gambar img{
        transform: scale(0.5);
        margin-right: 2rem;
        margin-left: -2rem;
      }

      .nama h5{
        margin-right: 1rem;
        margin-left: -5rem;
      }
      p {
        margin-left: -5rem;
        text-align: justify;
      }
      table{
        width: auto;
      }

      tr, td {
        padding: 5px;
      }

    }


    @media screen and (max-width: 390px) {

      .card{
        transform: scale(0.5);
        margin-left: -5rem;
        
      }

      .gambar img{
        transform: scale(0.5);
        margin-right: 2rem;
        margin-left: -2rem;
      }

      .nama h5{
        margin-right: 1rem;
        margin-left: -5rem;
      }
      p {
        margin-left: -5rem;
        text-align: justify;
      }
      table{
        width: auto;
      }

      tr, td {
        padding: 5px;
      }

    }

    @media screen and (max-width: 800px) {
      .card{
        transform: scale(1.0);
        margin-left: -5rem;
        margin-right: -6rem;
      }
      
    }
  </style>
  <body>
    <!-- navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark shadow-sm" style="background-color: darkseagreen">
      <div class="container">
        <a class="navbar-brand" href="#" style="color: rgba(14, 110, 81, 0.979)">TK Al-Muttaqin</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="Home.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Home.php">About</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Lainnya </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="informasi.php">Informasi</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li><a class="dropdown-item" href="ppdb.php">PPDB</a></l>
              </ul>
            </li>
            <button class="btn btn-outline-success"><a class="nav-link" href="login.php">Masuk</a></button>
          </ul>
         
        </div>
      </div>
    </nav>
    <!-- end navbar -->

    <!-- jumbotron  -->
    <section class="jumbotron jumbotron-fluid">
      <div class="container">
        <div class="content text-center">
          <h1 class="display-4" style="color: darkolivegreen">Informasi TK Al-Muttaqin</h1>
          <p class="lead">Pusat informasi TK Al-Muttaqin</p>
        </div>
      </div>
      
    </section>

    <section class="info" style="background-color: darkolivegreen" >
          <div class="container" >
            <?php 

                
              $query= mysqli_query($kon, "SELECT * FROM info  order by id_info desc ");
              $no = 1;

              while($result =mysqli_fetch_array($query)){

              ?>
      
                    <div class="card">
                      <p><?php  $no++ ?></p>
                      <table boder="1" >
                        <tr>
                          <th class="gambar" style=" text-align: center" width="30%"><?php echo "<img style='width: 250px' src='img/$result[gambar_info]'" ?></th>
                          <th class="nama" style="text-align: left"><h5 style="color: saddlebrown;"><?php echo $result['nama_info'] ?></h5>
                          <p><?php echo $result['isi_info'] ?></p><p style="color: green;"><?php echo $result['tgl_info'] ?></p></th>
                        </tr>
                      </table>
                      
                      
                    </div>
                    <?php

                    }

                    ?>
                  
                
              </div> 
          </div>
      </section>  
  
    <!-- end jumbotron -->

    <!-- isi -->
    <!-- <section id="info" style="background-color: darkolivegreen">
      <div class="container"></div>
    </section> -->
    <!-- end isi -->
<!-- footer -->
    <footer  class="p-5 " style="background-color: #213b26;">
      <p class="text-white fw-bold text-center">TK Al-Muttaqin Bekasi 2021</p>
    </footer>
    <!-- end footer -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
  </body>
</html>
