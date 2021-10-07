<?php
session_start();

// konek ke db
$db = mysqli_connect('localhost','root','','db_almuttaqin');

// deklarasi variable
$username ="";
$errors   = array();

// memanggil function register() jika register_btn di klik
if (isset($_POST['register_btn'])) {
    register();
}

// register user
function register(){
    global $db, $errors, $username;

    $nama       = e($_POST['nama']);
    $username   = e($_POST['username']);
    $password_1 = e($_POST['password_1']);
    $password_2 = e($_POST['password_2']);

    if (empty($nama)){
        array_push($errors, "Name is required");
    }
    if (empty($username)) {
        array_push($errors, "Username is required");
    }
    if (empty($password_1)) {
        array_push($errors, "Password is required");
    }
    if ($password_1 != $password_2) {
        array_push($errors, "The two passwords do not match");
    }

    // 
    if (count($errors) == 0) {
        $password = md5($password_1);

        if (isset($_POST['user_type'])) {
            $user_type = e($_POST['user_type']);
            $query = "INSERT INTO users (nama, username, password, level)
                    VALUES('$nama', '$username', '$password', '$level')";
            mysqli_query($db, $query);
            $_SESSION['success'] = "Selamat! Pengguna baru berhasil ditambahkan!";
            header('location: Home.html');

        }else{
            $query = "INSERT INTO users (nama, username, password, level)
                        VALUES('$nama, '$username', '$password', '$level')";
            mysqli_query($db, $query);

            $logged_in_user_id = mysqli_insert_id($db);

            $_SESSION['user'] = getUserById($Logged_in_user_id); 
            $_SESSION['success'] = "You are now logged in";
            header('location : home.html');
        }
    }
}

function getUserById($id){
    global $db;
    $query = "SELECT * FROM users WHERE id=" . $id;
    $result = mysqli_query($db, $query);

    $user = mysqli_fetch_assoc($result);
    return $user;
}
function e($val){
    global $db;
    return mysqlu_real_escape_string($db, trim($val));
}

function display_error() {
    global $errors;

    if (count($errors) > 0){
        echo $errors;

        if (count($errors) > 0){
            echo '<div class="error">';
                foreach ($errors as $error) {
                    echo $error. '<br>';
                }
            echo '</div>';
        }
    }
}
?>