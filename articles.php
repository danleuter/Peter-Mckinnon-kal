<?php
	require('config/config.php');
    require('config/db.php');
    
    
    // get ID
    $art_id = mysqli_real_escape_string($conn, $_GET['art_id']);

    // Create Query
    $query = 'SELECT * FROM posts WHERE art_id = '.$art_id;

    // Get Result
    $result = mysqli_query($conn, $query);

    // Fetch Data
    $article = mysqli_fetch_assoc($result);
    
    // Free Result
    mysqli_free_result($result);

    // Close Connection
    mysqli_close($conn);


    include('inc/header.php');
?>


<div class="landing-page-articles">

</div>
<main>
    <div class="jumbotron">
        <a href="<?php echo ROOT_URL; ?>" class="btn btn-primary">Back</a>
        <div>
            <h1 class="display-3 article-title"><?php echo $article['art_title']; ?></h1>
            <h3 class=""><?php echo $article['art_desc']; ?></h3>
            <small class="published-date text-muted"><?php echo $article['art_date']; ?></small>
            <p class="lead"><?php echo $article['art_author']; ?></p>
            <hr class="my-4">
        </div>
        <div class="content-inner-wrap">
            <div><?php echo $article['art_content']; ?></div>     
        </div>
    </div>
</main>
    

<?php include 'inc/footer.php' ?>