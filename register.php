<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />

    <!-- Boostrap icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">

    <!-- CSS -->
    <link rel="stylesheet" href="style.css" />

    <title>Registrasi</title>
    <link rel="stylesheet" href="style.css" type="">
</head>
<style>
	/* .id about { */
/* padding-bottom: 2rem; */
/* } */
body {
  font-family: sans-serif;
  background: #f1fdf5;
}

h1 {
  text-align: center;
  /*ketebalan font*/
  font-weight: 300;
}

.tulisan_login {
  text-align: center;
  /*membuat semua huruf menjadi kapital*/
  text-transform: uppercase;
}

.kotak_login {
  width: 350px;
  background: #bbf5d1;
  /*meletakkan form ke tengah*/
  margin: 80px auto;
  padding: 30px 20px;
  box-shadow: 0px 0px 100px 4px #d6d6d6;
}

label {
  font-size: 11pt;
}

.form_login {
  /*membuat lebar form penuh*/
  box-sizing: border-box;
  width: 100%;
  padding: 10px;
  font-size: 11pt;
  margin-bottom: 20px;
}

.tombol_login {
  background: #2aa7e2;
  color: white;
  font-size: 11pt;
  width: 100%;
  border: none;
  border-radius: 3px;
  padding: 10px 20px;
}

.tombol_register {
  background: #2aa7e2;
  color: white;
  font-size: 11pt;
  width: 100%;
  border: none;
  border-radius: 3px;
  padding: 10px 20px;
}

.link {
  color: #232323;
  text-decoration: none;
  font-size: 10pt;
}

.alert {
  background: #e44e4e;
  color: white;
  padding: 10px;
  text-align: center;
  border: 1px solid #b32929;
}

.header {
  width: 40%;
  margin: 50px auto 0px;
}

</style>
<body>
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
              <a class="nav-link active" href="Home.php">About</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> Lainnya </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="gallery.html">Gallery</a></li>
                <li><a class="dropdown-item" href="informasi.php">Informasi</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li><a class="dropdown-item" href="elearning_murid.php">E-Learning</a></li>
                <li><a class="dropdown-item" href="ppdb.php">PPDB</a></li>
              </ul>
            </li>
          </ul>
          
        </div>
      </div>
</nav>
    <?php 
    // include'koneksiform.php';
    ?>
    <div class="header pt-5">
    <h1 class="text-align" >Selamat Datang  <br/> TK Al-Muttaqin</h1>
    </div>

  <?php 
  include 'koneksiform.php';
	// session_start();
	
	// if(isset($_POST['regsiter'])){
  //   $username = $_POST['username'];
  //   $password = password_hash($_POST['password'], password_default);
  //   $password1 = password_hash($_POST['password1'] password_default);
	// 	if( registrasi($_POST) > 0){
	// 		echo "<div class='alert'>User berhasil ditambahkan ! silahkan login</div>";
	// 	} else {
  //     echo mysqli_error($kon);
  //   }
	// }

  // $query = mysqli_query($koneksi, "SELECT max(id_user) as kodeTerbesar FROM user");
  // $data = mysqli_fetch_array($query);
  // $id_user = $data['kodeTerbesar'];

  // $urutan = (int) substr($id_user, 4, 3);
  
  // $urutan++;

  // $huruf = "USR";
  
  // $id_user = $huruf .  sprintf("%03s", $urutan);
	?>

	
    <div class="kotak_login">
		<p class="tulisan_login" >Silahkan Registrasi</p>
 
		<form action="registrasi.php" method="post">
       <!-- <label>Nama</label>
			<input type="text" name="nama" class="form_login" placeholder="Nama .." required="required"> -->
      <label>Nama</label>
			<input type="text" name="nama" class="form_login" placeholder="Nama .." required="required">
			<label>Username</label>
			<input type="text" name="username" class="form_login" placeholder="Username .." required="required">
 
			<label>Password</label>
			<input type="password" name="password" class="form_login" placeholder="Password .." required="required">

            <label>Konfismasi Password</label>
			<input type="password" name="password1" class="form_login" placeholder="Password .." required="required">
      <li>
                <label for="level">Level :</label>
                <select name="level" class="form_login"required>
                  <option>Pilih</option>
                  <option value="admin">Admin</option>
                  <option value="kepala sekolah">Kepala Sekolah</option>
                  <option value="guru">Guru</option>
                  <option value="murid">Murid</option>
                </select>
            </li>
 
			<input type="submit" class="tombol_register" name="register_btn" value="REGISTER">
 
			<br/>
			<br/>
			<center>
				Sudah punya akun? <a href="login.php">Login</a>
			</center>
			<center>
				<a class="link" href="Home.php">kembali</a>
			</center>
		</form>
		
	</div>
 
</body>
</html>