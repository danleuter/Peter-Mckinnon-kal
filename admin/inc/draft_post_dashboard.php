<?php 
    require('../../config/config.php');
    require('../../config/db.php');

    include('profile.inc.php');

    
    if(isset($_POST['delete'])){
        $delete_id = mysqli_real_escape_string($conn, $_POST['delete_id']);
        
        $query = "DELETE FROM posts WHERE art_id = {$delete_id}";
        if(mysqli_query($conn, $query)){
            header('Location: '.ROOT_URL_ADMIN.'');
        } else {
            echo 'ERROR: '. mysqli_error($conn);
        }
    }
     
    // Create Query
    $query = 'SELECT * FROM posts WHERE art_status = 2 ORDER BY art_date DESC LIMIT 4';
    // $query2 = 'SELECT * FROM posts WHERE '

	// Get Result
	$result = mysqli_query($conn, $query);

	// Fetch Data
	$drafts = mysqli_fetch_all($result, MYSQLI_ASSOC);

	// Free Result
	mysqli_free_result($result);

	// Close Connection
    mysqli_close($conn);

    if(isset($_POST['publish'])){

        // Get form data text
        $update_id =  $_POST['update_id'];
        echo $_POST['update_id'];
        exit();
    
        // $qr = "SELECT * FROM posts WHERE "
        
        // $status = 1;
        $query = "UPDATE posts SET
                            art_status = $status
                         WHERE art_id = {$update_id}";

		if(mysqli_query($conn, $query)){
			header('Location: '.ROOT_URL_ADMIN.'');
		} else {
			echo 'ERROR: '. mysqli_error($conn);
		}
    }
    
    include("header_dashboard.php");
    include('anavbar.php');
    
    ?>
   
<!-- Main Body -->
<main class="dashboard-bg"></main> 

<!-- drafts -->
<article class="published-articles">   
        <div class="articles">
        <div ><h1 id="Page-title"> DRAFT POSTS</h1></div>
            <?php foreach($drafts as $draft) : ?>
                <div class="card-box">
                    <div class="cards border-danger mb-3 d-flex">
                        <img class="article-thumbnail" style="object-fit: cover; height: 180px;" src="../images/<?php echo $draft['art_image']; ?>">
                        <div class="card-content">
                            <div class="card-header d-flex justify-content-between">
                                <div class=" author">Authored by: <h4><?php echo $draft['art_author']; ?></h4><small class="badge outline-primary">on <?php echo $draft['art_date']; ?></small>
                                </div>
                                    <div class='d-flex flex-column'>
                                        <div class="btn btn-sm btn-info align-items"><a href="<?php echo ROOT_URL_ADMIN; ?>dashboard/update.php?art_id=<?php echo $draft['art_id']; ?>">Edit</a></div>
                                        <form class="buttons d-flex" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                                            <input type='hidden' name="delete_id" value="<?php echo $draft['art_id']; ?>">
                                            <input type="submit" name="delete" value="Delete" class='btn btn-sm btn-danger'>
                                        </form>
                                    </div>
                                </div>
                            <div class="article-content">
                                <div class="card-body">
                                    <h6 class="card-title"><?php echo $draft['art_title']; ?></h6>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </article>

    <?php include('../../footer.php'); ?>

    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/popper.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>

    <script src="../js/script.js" type="text/javascript"></script>

</body>
</html>