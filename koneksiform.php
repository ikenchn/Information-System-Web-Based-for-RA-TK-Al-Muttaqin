<?php 
	session_start();
	$kon = mysqli_connect('localhost', 'root', '', 'db_almuttaqin');
	
	$username = "";

	// return user array from their username
    function getUserByUsername($username){
        global $kon;
        if (isset($_SESSION['username'])) {
            $query = "SELECT * FROM users WHERE username='$username'";
            $result = mysqli_query($kon, $query);

            $user = mysqli_fetch_assoc($result);
            return $user;
        }
    }

	function isGuru()
    {
        if ($_SESSION['level'] == "guru")  {
            $_SESSION['username'] = $username;
            return true;
        } else {
            return false;
        }
    }

    function isMurid()
    {
        if ($_SESSION['level'] == "murid")  {
			$_SESSION['username'] = $username;
            return true;
        } else {
            return false;
        }
    }

    function isAdmin()
    {
        if ($_SESSION['level'] == "admin")  {
			$_SESSION['username'] = $username;
            return true;
        } else {
            return false;
        }
    }


	

?>