<?php

// mengaktifkan session php


// hapus semua session
session_destroy();

// alihkan halam ke halaman login
header("location:login.php");

?>