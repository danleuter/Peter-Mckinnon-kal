<?php

	require('../config/config.php');
    require('../config/db.php');
    
    include('inc/profile.inc.php');

    
    
    if ( isset( $_SESSION['userId'] ) ) {
        // Grab user data from the database using the user_id
        // Let them access the "logged in only" pages
        // echo $_SESSION['userId'];
        if($post['role'] != 'administrator'){
            header('Location: inc/published.php');
            // echo $post['role'];
        }
        // echo "wingwong";
    } else {
        // Redirect them to the login page
        header('Location: ' .ROOT_URL_ADMIN.'loginandregister.php');
        //echo 'error';
    }  
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PETER MCKINNON - dashboard</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body>

        <?php 
            include('inc/anavbar.php');
            
           ?>
   
<!-- Main Body -->
<main class="dashboard-bg">


<!--
// if (isset($_SESSION['userId'])) {
//     echo "<p class='login-status' >You are Logged In! </p>";
// }
// else {
//     echo "<p class='login-status' >You are Logged out! </p>";
// }-->


</main>
<!-- Main Body -->


<?php include('../footer.php'); ?>

    <script src="js/jquery.min.js" type="text/javascript"></script>
    
    <script src="js/popper.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/script.js" type="text/javascript"></script>

</body>
</html>