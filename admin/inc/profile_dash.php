<?php 
    require('../../config/config.php');
    require('../../config/db.php');

    
    include('profile.inc.php');
    

    include("header_dashboard.php");
    include('anavbar.php');
    

?>
    
    
   
<!-- Main Body -->
<main class="dashboard-bg"></main> 
<div  class="articles">
    <div><h1 id="Page-title"> PROFILE</h1></div>
    <div class="card">
        <div class="card-header">
            <img src="../images/profile.jpeg" alt="Profile Image" class="profile-img">
        </div>
        <div class="card-body">
            <p class="full-name"><?php echo $post['firstname']; ?> <?php echo $post['lastname']; ?></p>
            <p class="username"><?php echo $post['username']; ?> </p>
            <p class="city"><?php echo $post['email']; ?></p>
            <p class="desc"><?php echo $post['aboutme']; ?></p>
            <p>
                <a href="#" class="social-icon facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social-icon twitter"><i class="fab fa-twitter"></i></a>
                <a href="#" class="social-icon tumblr"><i class="fab fa-tumblr"></i></a>
                <a href="#" class="social-icon youtube"><i class="fab fa-youtube"></i></a>
                <a href="#" class="social-icon linkedin"><i class="fab fa-linkedin"></i></a>
                <a href="#" class="social-icon google-plus"><i class="fab fa-google-plus"></i></a>
            </p>
        </div>
        <div class="card-footer">
            <div class="col vr">
                <p><span class="count">1.8K</span> Followers</p>
            </div>
            <div class="col">
                <p><span class="count">2.0K</span> Following</p>
            </div>
            
        </div>
    </div>
    </div>

    <?php include('../../footer.php'); ?>

    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/popper.min.js" type="text/javascript"></script>
    <script src=" ../js/bootstrap.min.js" type="text/javascript"></script>

    <script src="../js/script.js" type="text/javascript"></script>

</body>
</html>