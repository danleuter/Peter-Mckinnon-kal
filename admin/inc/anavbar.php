<nav class="menu-web">
    <div class="menu-container">
        <div class="brand-name" >
            <p class="logo"><a href="<?php echo ROOT_URL_ADMIN; ?>">Peter Mckinnon</a></p>
        </div>
        <div class="navbar-menu">
                <div class="search-bar"><input type="search" name="" id="article-search" placeholder="Search"></div>
            <ul>
                <!-- <li><input type="search" name="" id="article-search" placeholder="Search"></li> -->
                <a class="menu-btn initialism" href="<?php echo ROOT_URL_ADMIN; ?>dashboard/create.php">Create <i class="fas fa-pencil-alt"></i></a>
                <a class="menu-btn initialism" href="<?php echo ROOT_URL_ADMIN; ?>dashboard/edit_profile.php?admin_id=<?php echo $post['admin_id']; ?>"> <?php echo $post['firstname']; ?> <i  class="profile fas fa-user-circle"></i></a>
                <a class="menu-btn initialism" href="<?php echo ROOT_URL_ADMIN; ?>inc/logout.php"> logout <i class="fas fa-user-alt-slash"></i></a>
            </ul>
        </div>
    </div>
</nav>


    <!-- sidebar -->

<!-- <div class="sidebar">
    <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action active">
                Published Articles
            </a>
            <a href="#" class="list-group-item list-group-item-action">Draft Articles
            </a>
            <a href="#" class="list-group-item list-group-item-action">Pool of Ideas
            </a>
            <a href="#" class="list-group-item list-group-item-action">Profile
            </a>
            <a href="#" class="list-group-item list-group-item-action disabled">Messages
            </a>
    </div>
</div> -->

<div id='sidebar' class="sidebar">
    <div class="list-group">
            <a id="dashboard" href="<?php echo ROOT_URL_ADMIN; ?>index.php" class="list-group-item list-group-item-action"> Dashboard
            </a>
            <a id="published" href="<?php echo ROOT_URL_ADMIN; ?>inc/published.php" class="list-group-item list-group-item-action"> Published Articles
            </a>
            <a id="draft" href="<?php echo ROOT_URL_ADMIN; ?>inc/draft_post_dashboard.php" class="list-group-item list-group-item-action"> Draft Articles
            </a>
            <a id="pool" href="<?php echo ROOT_URL_ADMIN; ?>inc/pool_of_ideas.php" class="list-group-item list-group-item-action"> Pool of Ideas
            </a>
            <a id="profile" href="<?php echo ROOT_URL_ADMIN; ?>inc/profile_dash.php" class="list-group-item list-group-item-action"> Profile
            </a>
            <a id="messages" href="#" class="list-group-item list-group-item-action disabled"> Messages
            </a>
    </div>
</div>
