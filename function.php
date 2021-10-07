<?php
//koneksi database
$conn = mysqli_connect("localhost", "root","root", "db_almuttaqin");

function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while( $row = mysqli_fetch_assoc($result) ){
        $rows[] = $row;
    }
    return $rows;
}


function registratsi ($data){
    global $conn;

    $username = strtolower(stripslashes ($data["username"]));
    $password = mysqli_real_escape_string($conn, $data ["password"]);
    $password2 = mysqli_real_escape_string($conn, $data["password2"]);

    //cek konfirm pass
    if( $password !== $password2) {
        echo "<script>
                alert('konfirmasi password tidak sesuai ');
            </script>";

        return false;
    }

    
}


?>