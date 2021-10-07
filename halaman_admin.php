<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
    </head>
    <body>
        <?php
        session_start();

        if($_SESSION['level']==""){
            header("location:login.php?pesan=gagal");

        }
        ?>
        <h1>Halaman Admin</h1>

        <p>Selamat Datang <b><?php echo $_SESSION['username']; ?></b> Anda telah login sebagain <b><?php echo $_SESSION['level']; ?></b></p>
        <a href="logout.php">LOGOUT</a>
        <a href="AdminLTE-3.1.0/index.html">Lanjutkan</a>
        
    </body>
</html>