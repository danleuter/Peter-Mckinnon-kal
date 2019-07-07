<?php 

	require('../config/config.php');
	require('../config/db.php');

	// Create Query for draft posts
	$query = 'SELECT * FROM posts WHERE art_status = 2 ORDER BY art_date DESC';
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

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Striped Table with Hover</h4>
                                <p class="category">Here is a subtitle for this table</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
								<thead>
                                        <th>ID</th>
                                    	<th>Author</th>
                                    	<th>Title</th>
                                    	<th>Description</th>
                                    	<th>Action</th>
                                    </thead>
                                    <tbody>
									<?php foreach($posts as $post) : ?>
                                        <tr>
                                        	<td><?php echo $post['art_id']; ?></td>
                                        	<td><?php echo $post['art_author']; ?></td>
                                        	<td><?php echo $post['art_title']; ?></td>
                                        	<td><?php echo $post['art_desc']; ?></td>
                                        	<td>
												<div class="btn btn-sm btn-info"><a href="<?php echo ROOT_URL_ADMIN; ?>dashboard/update.php?art_id=<?php echo $post['art_id']; ?>">Edit</a></div>
                                    			<form class="buttons" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
													<input type='hidden' name="delete_id" value="<?php echo $post['art_id']; ?>">
													<input type="submit" name="delete" value="Delete" class='btn btn-sm btn-danger'>
												</form>
											
											</td>
                                        </tr>
                                        
           							 <?php endforeach; ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>
<?php include 'inc/footer.php';