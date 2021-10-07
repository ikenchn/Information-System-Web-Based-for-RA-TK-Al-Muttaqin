<?php
  include 'koneksiform.php';
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />

    <!-- Boostrap icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">

    <!-- CSS -->
    <link rel="stylesheet" href="style.css" />

    <title>Beranda | TK Al-Muttaqin</title>
    <style>
      .navbar {
        background-color: darkseagreen;
      }
      .carousel slide {
        height: 100%;
        background-size:cover;
      }
      .card{
        background-color: cornsilk;
      }
      
      @media screen and (max-width:780px){

        #maincontent{
            width: auto;
            float: none;
        }
        #sidebar{
            width: auto;
            float: none;
        }
        .mapel{
          width: auto;
          float: none;
        }
      }
      
    </style>
  </head>
  <body id="home" >
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark shadow-sm" style="background-color: darkseagreen">
      <div class="container">
        <i class="fas fa-mosque"></i>
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
              <a class="nav-link active" href="Home.php">About</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Lainnya </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="informasi.php">Informasi</a></li>
                <li><hr class="dropdown-divider" /></li>
                <!-- <li><a class="dropdown-item" href="elearning_murid.php">E-Learning</a></li> -->
                <li><a class="dropdown-item" href="ppdb.php">PPDB</a></li>
              </ul>
            </li>
            <button class="btn btn-outline-success"><a class="nav-link" href="login.php">Masuk</a></button>
          </ul>
          
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="content">
      <!-- notif -->
      <?php if (isset($_SESSION['success'])) : ?>
        <div class="error success">
          <h3>
            <?php
              echo $_SESSION['success'];
              unset($_SESSION['success']);
            ?>
          </h3>
        </div>
    </div>
    <?php endif ?>
    <div class="profile_info">

    </div>
    <!-- Jumbotron -->
    <section class="jumbotron jumbotron-fluid ">
      
      <!-- <div class="container "> -->
          <div id="carouselExampleControls" class="carousel slide mb-5" data-bs-ride="carousel" style="opacity: 0.7">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="img/selamatdatang.png" class="d-block w-100 " alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="img/tahun ajaran.png" class="d-block w-100 " alt="...">
                  </div>
                  <!-- <div class="carousel-item">
                    <img src="img/kindergarten-readiness.jpg" class="d-block w-100 " alt="...">
                  </div> -->
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
      <div class="container text-center mb-5">
        <p class="display-4 mt-5" style="color: saddlebrown;">Sistem Informasi Akademik TK Al-Muttaqin</p>
      </div>
      <!-- </div> -->
      <!-- <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#5a8a63" fill-opacity="1" d="M0,96L1440,96L1440,320L0,320Z"></path></svg> -->
      <section id="project" style="background-color: #5a8a63;" class="pb-5 mt-5">
      <div class="container " >
          <div class="row text-center ">
            <div class="col">
              <h2 style="color: #fcf7d4 ;" class="mt-5">Apa yang di pelajari?</h2>
            </div>
          </div>
          
          <?php 

              
          $query= mysqli_query($kon, "SELECT * FROM matapelajaran  order by id_mapel desc ");
          $no = 1;

          while($result =mysqli_fetch_array($query)){

          ?>

          <div class="mapel">
            <div class="row mt-5 ">
                <div class="col-md-4 mb-3">
                  <div class="card" style="width: 70rem;">
                    <p><?php  $no++ ?></p>
                    <table boder="1" >
                      <tr>
                        <th style="text-align: center" width="30%"><?php echo "<img style='width: 250px' src='img/$result[gambar_mapel]'" ?></th>
                        <th style="text-align: left"><h5 style="color: saddlebrown;"><?php echo $result['nama'] ?></h5>
                      <p><?php echo $result['info_mapel'] ?></p></th>
                      </tr>
                    </table>
                    
                    <div class="card-body margin-left">
                      
                    </div>
                  </div>
                  <?php

                  }

                  ?>
                </div>
              </div>
            </div> 
          </div>
            
      </div>
      
    </section>
    
    </section>
    <!--End Jumbotron-->

     <!-- project -->
     
    <!-- End Project  -->

    <!-- about -->
    <section id="about" >
      <div class="container mt-5">
        <div class="row text-center mb-5">
          <div class="col">
            <h2 style="color: #5a8a63;">Tentang Sekolah</h2>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <h3 style="color: saddlebrown;" class="mb-2"">Visi dan Misi</h3>
            <h4 class="mt-3"> <i class="bi bi-pencil" style="color: #6fc58c;"></i> Visi</h4>
            <p>"Membentuk pribadi muslim yang beriman, bertaqwa, berilmu, cerdas, dan terampil serta memiliki akhlaq mulia ".</p>
            <h4> <i class="bi bi-pencil" style="color: #6fc58c;"></i> Misi</h4>
            <p>1. Membentuk dasar pribadi siswa agar memiliki akhlaq dan perilaku yang islami <br>
                2. Membentuk dasar probadi siswa untuk dapat melaksanakan kewajibannya sebagai seorang muslim yang kaffah <br>
                3. Membentuk dasar kepribadian siswa untuk disiplin dan memiliki dedikasi serta tanggung jawab. <br>
                4. Membentuk dasar kepribadian siswa untuk dapat berfikir logis dan kritis. <br>
                5. Membentuk dasar kepribadian siswa untuk memiliki wawasan yang luas dalam ilmu pengetahuan dan teknologi. </p>
          </div>
        </div>
        <div class="row text-center mt-5">
          <div class="col mb-5">
            <h3 style="color: saddlebrown;" >Tujuan Pendidikan RA Al-Muttaqin</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-2">
            <i class="bi bi-brightness-high text-lg-start" style="color: #5a8a63;"></i>
            <p>Mencerdaskan anak bangsa sejak dini</p>
          </div>
          <div class="col-md-2">
            <i class="bi bi-dice-5 text-center" style="color: #5a8a63;"></i>
            <p>Melatih kreatifitas anak sejak dini</p>
          </div>
          <div class="col-md-2">
            <i class="bi bi-emoji-laughing text-center" style="color: #5a8a63;"></i>
            <p>Mengenalkan anak pada kegiatan sekolah</p>
          </div>
          <div class="col-md-2">
            <i class="bi bi-book " style="color: #5a8a63;"></i>
            <p>Melatih anak gemar belajar</p>
          </div>
          <div class="col-md-2">
            <i class="bi bi-heart-fill text-center" style="color: #5a8a63;"></i>
            <p>Menanamkan akidah islam yang berakhlaqul karimah</p>
          </div>
          <div class="col-md-2">
            <i class="bi bi-award text-center" style="color: #5a8a63;"></i>
            <p>Menanamkan ras tanggung jawab dan kemandirian kepada peserta didik</p>
          </div>
        </div>
      </div>
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
        <path
          fill="#d9e8b7"
          fill-opacity="1"
          d="M0,256L40,224C80,192,160,128,240,117.3C320,107,400,149,480,181.3C560,213,640,235,720,213.3C800,192,880,128,960,128C1040,128,1120,192,1200,197.3C1280,203,1360,149,1400,122.7L1440,96L1440,320L1400,320C1360,320,1280,320,1200,320C1120,320,1040,320,960,320C880,320,800,320,720,320C640,320,560,320,480,320C400,320,320,320,240,320C160,320,80,320,40,320L0,320Z"
        ></path>
      </svg>
    </section>
    <!-- end about -->

    <!-- contact -->
    <section id="contact" style="background-color: #d9e8b7">
     <div class="container mb-5">
       <div class="row text-center mb-5">
         <div class="col">
           <h2 style="color: saddlebrown;">Contact Us</h2>
         </div>
       </div>
       <div class="row">
         <div class="col-md-2">
          <img src="img/alamat.png" alt="alamat" width="100">
         </div>
         <div class="col-md-4">
          <h2 style="color: #5a8a63;">Alamat Kami</h2>
          <p>Jl. Pangrango Terusan 19 A, RT 000/00, Jatibening Baru Pondok Gede,<br> Bekasi 17412</p>
         </div>
         <div class="col-md-2">
           <img src="img/telepon.png" alt="telepon" width="100">
         </div>
         <div class="col-md-4">
          <h2 style="color: #5a8a63;">Hubungi Kami Melalui</h2>
          <p>(021) 8497 3641</p>
         </div>
       </div>
     </div>
     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#213b26" fill-opacity="1" d="M0,32L120,48C240,64,480,96,720,106.7C960,117,1200,107,1320,101.3L1440,96L1440,320L1320,320C1200,320,960,320,720,320C480,320,240,320,120,320L0,320Z"></path></svg>
    </section>
    <!-- contact -->
    <!-- footer -->
    <footer style="background-color: #213b26;" class="pb-5">
      <p class="text-white fw-bold text-center">TK Al-Muttaqin Bekasi 2021</p>
    </footer>
    <!-- end footer -->
   
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
  </body>
</html>
