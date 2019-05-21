<?php
	require('../../config/config.php');
    require('../../config/db.php');
    
    
	if(isset($_POST['submit1'])){

        // Get form data text
        $title = mysqli_real_escape_string($conn, $_POST['art_title']);
        $desc = mysqli_real_escape_string($conn, $_POST['art_desc']);
        $body = mysqli_real_escape_string($conn, $_POST['art_content']);
        $author = mysqli_real_escape_string($conn, $_POST['art_author']);
        // Get form data files
        $image = mysqli_real_escape_string($conn, $_FILES['art_image']['name']);
        $image_tmp = $_FILES['art_image']['tmp_name'];

        move_uploaded_file($image_tmp, "assets/images/$image");

        $query = "INSERT INTO posts (art_title, art_author, art_desc, art_content, art_image, art_status) VALUES('$title', '$author', '$desc', '$body', '$image',  1)";

        if(mysqli_query($conn, $query)){
            header('Location: '.ROOT_URL_ADMIN.'');
        } else {
            echo 'ERROR: '. mysqli_error($conn);
        }       
    }
    
        include('../inc/profile.inc.php');
        // Free Result
        mysqli_free_result($result);
    
        // Close Connection
        mysqli_close($conn);
    

    if(isset($_POST['submit2'])){
        //Get form data
		$title = mysqli_real_escape_string($conn, $_POST['art_title']);
        $body = mysqli_real_escape_string($conn, $_POST['art_content']);
        $desc = mysqli_real_escape_string($conn, $_POST['art_desc']);
        $author = mysqli_real_escape_string($conn, $_POST['art_author']);
        $image = mysqli_real_escape_string($conn, $_FILES['art_image']['name']);

        $image = mysqli_real_escape_string($conn, $_FILES['art_image']['name']);
        $image_tmp = $_FILES['art_image']['tmp_name'];

        move_uploaded_file($image_tmp, "assets/images/$image");

        $query = "INSERT INTO posts (art_title, art_author, art_desc, art_content, art_image, art_status) VALUES('$title', '$author', '$desc', '$body', '$image',  2)";

        if(mysqli_query($conn, $query)){
            header('Location: '.ROOT_URL_ADMIN.'');
        } else {
            echo 'ERROR: '. mysqli_error($conn);
        }       
    }
    
    
    include("../inc/header_dashboard.php");
    include('../inc/navbar.php');
?>





    <form class="create-article" method="post" action="<?php $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
        <div class="article-editor text bg-primary mb-3">
            <!-- <div class="card-header">What's going on?</div> -->
            <div class="card-body">
                <h6 class="card-title"><label>Title</label>
                <input type="text" class="form-control" name="art_title" placeholder="Title"/></h6>
                <h6 class="card-title"><label>Description</label>
                <input type="text" class="form-control" name="art_desc" placeholder="Short Description"/></h6>
                <h6 class="card-title"><label>Author</label>
                <input type="text" class="form-control" name="art_author" placeholder="Peter Mckinnon"/></h6>
                <h6 class="card-title"><label>Category</label>
                <input type="text" class="form-control" name="art_category" placeholder="Category"/></h6>

                <!-- dito bugs -->
                <h6 class="card-title"><label>Upload Thumbnail</label>
                <div class="input-group-append"><input class="input-group-text" type="file" name="art_image">
                </div></h6>

                <!-- dito bugs -->
                <hr class="my-4">
                <h6 class="card-title"><label>Content</label></h6>
                <textarea class="text-primary" id="editor" name="art_content" placeholder="Some quick example text to build on the card title and make up the bulk of the card's content."></textarea>
                <hr class="my-4">
                <input type="submit" name="submit1" value="Publish Now" class="btn btn-outline-success"/>
                <input type="submit" name="submit2" value="Save to Draft" class="btn btn-outline-info"/>
                <button type="button" class="btn btn-outline-danger">Cancel</button>
            </div>
        </div>
    </form>


    




<script>

var editor = new Jodit('#editor');
editor.value = '';

// $('textarea').each(function () {
//     var editor = new Jodit(this);
//     editor.value = '<p>start</p>';
// });
</script>

</body>
</html>