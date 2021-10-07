<!DOCTYPE html>
<html>
<head>
    <title>Guru</title>
</head>
<body>
    <?php
    session_start();

    if($_SESSION['level']==""){
        header("location:login.php?pesan=gagal");
    }

    ?>
    <h1>Halaman Guru</h1>

    <p>Selamat Datang <b><?php echo $_SESSION['username']; ?></b> Anda telah login sebagai <b><?php echo $_SESSION['level']; ?></b>. </p>
    <a href="logout.php">LOGOUT</a>

    
</body>
</html>