<!DOCTYPE html>
<html>
<head>
    <title>Murid</title>
</head>
<body>
    <?php
    session_start();

    if($_SESSION['level']==""){
        header("location:login.php?pesan=gagal");
    }

    ?>
    <h1>Halaman Murid</h1>
    <p>Halo <b><?php echo $_SESSION['username']; ?></b> Anda telah login sebagai <b><?php echo $_SESSION['level']; ?></b>.</p>
    <a href="logout.php"> LOGOUT</a>
</body>
</html>