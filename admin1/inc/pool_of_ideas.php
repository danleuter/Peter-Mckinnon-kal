<?php 
    require('../../config/config.php');
    require('../../config/db.php');
   
    include('profile.inc.php');
    
    include("header_dashboard.php");
    include('anavbar.php');
    ?>
    
   
<!-- Main Body -->
<main class="dashboard-bg"></main> 

<div class="pool-of-ideas">
<div><h1 id="Page-title"> POOL OF IDEAS</h1></div>
        <div class="card-warp">
            <div class="card card-ideas text-white bg-primary mb-3" style="max-width: 20rem;">
                <div class="card-header">Header
                </div>
                <div class="card-body">
                    <h6 class="card-title">Primary card title</h6>
                    <p class="card-text text-white">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
            
         </div>
    </div>

    <?php include('../../footer.php'); ?>

    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/popper.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>

    <script src="../js/script.js" type="text/javascript"></script>


</body>
</html>