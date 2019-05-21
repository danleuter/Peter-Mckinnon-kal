<?php
	require('../config/config.php');
    require('../config/db.php');
    
    include('../assets/inc/art_post.inc.php');
    include('../assets/inc/header_pages.php');
    include('../assets/inc/navbar_client.php');
?>


<div class="landing-page-articles">

</div>
<main>
    <div class="jumbotron">
        <a href="<?php echo ROOT_URL; ?>" class="btn btn-primary">Back</a>
        <div>
            <h1 class="display-3 article-title"><?php echo $post['art_title']; ?></h1>
            <h3 class=""><?php echo $post['art_desc']; ?></h3>
            <small class="published-date text-muted"><?php echo $post['art_date']; ?></small>
            <p class="lead"><?php echo $post['art_author']; ?></p>
            <hr class="my-4">
        </div>
        <div class="content-inner-wrap">
            <div><?php echo $post['art_content']; ?></div>     
        </div>
    </div>
</main>
    
</body>
</html>