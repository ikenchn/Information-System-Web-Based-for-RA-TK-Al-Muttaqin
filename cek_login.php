<?php
//mengaktifkan session pada php
// session_start();

//menghubungkan php dengan koneksi database
include 'koneksiform.php';



$username = $_POST['username'];
$password = $_POST['password'];

$login = mysqli_query($kon,"select * from users where username='$username' and password='$password'");
$cek = mysqli_num_rows($login);



if($cek > 0){

    $data = mysqli_fetch_assoc($login);

    //cek sebagai admin
    if($data['level']=="admin"){

        $_SESSION['username'] = $username;
        $_SESSION['level'] = "admin";
        $_SESSION['login'] = true;
        header("location:admin/index.php");
    
    // cek sebagai guru
    }else if($data['level']=="guru"){
        $_SESSION['username'] = $username;
        $_SESSION['level'] = "guru";
        $_SESSION['login'] = true;
        header("location:guru/dashboard_guru.php");

    // cek sebagai murid
    }else if($data['level']=="murid"){
        $_SESSION['username'] = $username;
        $_SESSION['level'] = "murid";
        $_SESSION['login'] = true;
        header("location:murid/Home_murid.php");

    }else if($data['level']=="kepala sekolah"){
        $_SESSION['username'] = $username;
        $_SESSION['level'] = "kepala sekolah";
        $_SESSION['login'] = true;
        header("location:kepala sekolah/dashboard_kepsek.php");

    }else{

        header("location:login.php?pesan=gagal");
    }

    
}else{
    header("location:login.php?pesan=gagal");
}


?>