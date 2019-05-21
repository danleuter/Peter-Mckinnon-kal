<?php 
    require('../../config/config.php');
    require('../../config/db.php');
   
    include('profile.inc.php');
    
    include("header_dashboard.php");
    include('navbar.php');
    ?>

<div class="sidebar">
    <div class="list-group">
        <a href="<?php echo ROOT_URL_ADMIN; ?>index.php" class="list-group-item list-group-item-action ">
            Published Articles
        </a>
        <a href="<?php echo ROOT_URL_ADMIN; ?>inc/draft_post_dashboard.php" class="list-group-item list-group-item-action">Draft Articles
        </a>
        <a href="<?php echo ROOT_URL_ADMIN; ?>inc/pool_of_ideas.php" class="list-group-item list-group-item-action active">Pool of Ideas
        </a>
        <a href="<?php echo ROOT_URL_ADMIN; ?>inc/profile_dash.php" class="list-group-item list-group-item-action">Profile
        </a>
        <a href="#" class="list-group-item list-group-item-action disabled">Message
        </a>
    </div>
</div>
    
   
<!-- Main Body -->
<main class="dashboard-bg"></main> 

<div class="pool-of-ideas">
        <div class="card-warp">
            <div class="card card-ideas text-white bg-primary mb-3" style="max-width: 20rem;">
                <div class="card-header">Header
                </div>
                <div class="card-body">
                    <h4 class="card-title">Primary card title</h4>
                    <p class="card-text text-white">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
            
         </div>
    </div>