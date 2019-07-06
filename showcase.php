<?php
    require('config/config.php');
    require('config/db.php');
    
    // Create Query
    $query = 'SELECT * FROM posts WHERE art_status = 1 ORDER BY art_date DESC';
    // $query2 = 'SELECT * FROM posts WHERE '

	// Get Result
	$result = mysqli_query($conn, $query);

	// Fetch Data
	$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
	
	// Free Result
	mysqli_free_result($result);

	// Close Connection
    mysqli_close($conn);

    include('inc/header.php');
?>

<!-- <div class="landing-page-articles"></div> -->
<div class="jumbotron d-flex flex-wrap" style="margin: 100px 10px 10px !important;">

    <?php foreach($posts as $post) : ?>
        <div class="featured-card card border-0 mb-5"  style="width: 18rem; margin:10px; padding:10px">
            <div class="card border-0">
                <img class="article-thumbnail" style="height: 200px;" alt="Card image cap" src="<?php echo ROOT_URL_ADMIN; ?>images/<?php echo $post['art_image']; ?>">
            </div>
            <div class="card card-body justify-content-between mt-2">
                <div>
                    <h5 class="card-title"><?php echo $post['art_title']; ?></h5>
                    <p class="card-text"><?php echo $post['art_desc']; ?></p>
                </div>
                <div>
                    <a class="btn btn-sm btn-primary" href="<?php echo ROOT_URL; ?>articles.php?art_id=<?php echo $post['art_id']; ?>">Read More</a>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<?php include 'inc/footer.php' ?>