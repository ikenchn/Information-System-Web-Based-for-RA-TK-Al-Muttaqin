<?php
//menghubungkan php dengan koneksi database
include 'koneksiform.php';

// variable declaration
$username = "";
$errors   = array(); 

// call the register() function if register_btn is clicked
if (isset($_POST['register_btn'])) {
    register();
}

// REGISTER USER
function register(){
    global $kon, $errors;

    // receive all input values from the form
    $nama=$_POST['nama'];
    $username   =$_POST['username'];
    $level    =$_POST['level'];
    $password =$_POST['password'];
    $password1 =$_POST['password1'];

    // form validation: ensure that the form is correctly filled
    if ($password != $password1) {
        array_push($errors, "Password Tidak Sama!");
    }

    // register user if there are no errors in the form
    if (count($errors) == 0) {
        $password_user = ($password);//encrypt the password before saving in the database


        $sql = "INSERT INTO users (nama, username, password, level) 
                VALUES ('$nama','$username','$password_user', '$level')";
        $result  = mysqli_query($kon, $sql);
        if ($result) {
            ?><script>window.location.href = "login.php";</script><?php
        } else {
            ?><script>window.location.href = "login.php";</script><?php
        }
    }
}
?>