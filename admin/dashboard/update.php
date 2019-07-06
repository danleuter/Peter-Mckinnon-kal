<?php
	require('../../config/config.php');
	require('../../config/db.php');

    



	// Check For Submit
	if(isset($_POST['submit1'])){


        // Get form data text
        $update_id = mysqli_real_escape_string($conn, $_POST['update_id']);
        $title = mysqli_real_escape_string($conn, $_POST['art_title']);
        $desc = mysqli_real_escape_string($conn, $_POST['art_desc']);
        $body = mysqli_real_escape_string($conn, $_POST['art_content']);
        $art_category = mysqli_real_escape_string($conn, $_POST['art_category']);
        $author = mysqli_real_escape_string($conn, $_POST['art_author']);
        // $image =  mysqli_real_escape_string($conn, $_POST['art_image']);

        // //Get form data files
        // $images = $_FILES['art_image']['name'];
        // $images_tmp =  $_FILES['art_image']['tmp_name'];
        // move_uploaded_file($images_tmp, "assets/images/$images");
        

		$query = "UPDATE posts SET 
                    art_title='$title',
                    art_author='$author',
                    art_desc='$desc',
                    art_category='$art_category',
                    art_content='$body'
                    
                        WHERE art_id = {$update_id}";

		if(mysqli_query($conn, $query)){
			header('Location: '.ROOT_URL_ADMIN.'');
		} else {
			echo 'ERROR: '. mysqli_error($conn);
		}
    }
          

    // get ID
	$art_id = mysqli_real_escape_string($conn, $_GET['art_id']);

	// Create Query
	$query = 'SELECT * FROM posts WHERE art_id = '.$art_id;

	// Get Result
	$result = mysqli_query($conn, $query);

	// Fetch Data
	$posts = mysqli_fetch_assoc($result);


// get ID
   $id = mysqli_real_escape_string($conn, $_SESSION['userId']);

   // Create Query
   $query = 'SELECT * FROM author WHERE admin_id = '.$id;

   // Get Result
   $result = mysqli_query($conn, $query);

   // Fetch Data
   $post = mysqli_fetch_assoc($result);


	// Free Result
	mysqli_free_result($result);

	// Close Connection
	mysqli_close($conn);




include('../inc/header_dashboard.php');
include('../inc/anavbar.php');
?>




    <form class="create-article" method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
        <div class="article-editor text bg-primary mb-3">
            
            <div class="card-body">
                <h6 class="card-title"><label>Title</label>
                <input type="text" class="form-control" name="art_title" value="<?php echo $posts['art_title']; ?>"/></h6>
                <h6 class="card-title"><label>Description</label>
                <input type="text" class="form-control" name="art_desc"  value="<?php echo $posts['art_desc']; ?>"/></h6>
                <h6 class="card-title"><label>Author</label>
                <input type="text" class="form-control" name="art_author"  value="<?php echo $posts['art_author']; ?>"/></h6>
                <h6 class="card-title"><label>Category</label>
                <input type="text" class="form-control" name="art_category" value="<?php echo $posts['art_category']; ?>"/></h6>
                <h6 class="card-title"><label>Upload Thumbnail</label>

                <div class="input-group-append"><input class="input-group-text" type="File" name="art_image" <?php echo $posts['art_image']; ?>>
                </div></h6>
                <hr class="my-4">
                <h6 class="card-title"><label>Content</label></h6>
                <textarea class="text-primary" id="editor" name="art_content" ><?php echo $posts['art_content']; ?></textarea>
                <hr class="my-4">


                <input type="hidden" name="update_id" value="<?php echo $posts['art_id']; ?>" />
                <input type="submit" name="submit1" value="save" class="btn btn-outline-success"/>
                <!-- <input type="hidden" name="drafts" value="" />
                <input type="submit" name="submit2" value="Save to Draft" class="btn btn-outline-info"/> -->
                <a href='<?php echo ROOT_URL_ADMIN; ?>' type="button" class="btn btn-outline-danger">Cancel</a>
            </div>
        </div>
    </form>


    




<script>

var editor = new Jodit('#editor');
    editor();

</script>

</body>
</html>