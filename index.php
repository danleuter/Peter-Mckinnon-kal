<?php
	require('config/config.php');
    require('config/db.php');
    
    // Get Featured Articles
    // Create Query
    $query = 'SELECT * FROM posts WHERE art_status = 1 ORDER BY art_date DESC LIMIT 6';
	
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
    

<!-- Main Body -->
<main>
    <!-- landing page -->
    <section class="landing-page">
        <div class="landing-text text-white">
            <h1 class="text-white">Inspire. Travel. Learn.</h1>
            <p class='text-white initialism'>Photographer & Filmmaker. Lover of coffee and good stories.</p>
        </div>
    </section>
    <!-- End of Landing Page -->
<hr>
    <!-- Featured Articles -->

<section id="featured" class="container d-flex flex-wrap justify-content-around" style="margin: 75px auto !important;">
    <?php foreach($posts as $post) : ?>
        <div class="featured-card card border-0" >
            <div class="card border-0">
                <img class="article-thumbnail" style="height: 200px;" alt="Card image cap" src="admin/images/<?php echo $post['art_image']; ?>">
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
</section>


<hr>
    <!-- Profile  -->


    <div id="landing">
      <div id="landing-text">
        <div id="landing-text-inner">
          <h1>PETER MCKINNON</h1>
          <h2>PHOTOGRAPHY. COFFEE. CINEMATOGRAPHY.</h2>
          <p class='mx-3'>Accomplished Photographer &amp; Filmmaker, Peter McKinnon has amassed a large following on several platforms including over 2.7 million on his self titled YouTube Channel. His Video center around strong storytelling, industry tutorials and his love for coffee.</p>
          <a href="#" class="btn btn-outline-secondary" id="view-work">
            View Work
        </a>
        </div>
      </div>
      <div id="landing-image" ></div>
    </div>

<hr>

<!-- testimonials  -->
<!-- try other testimonials -->

<!-- Work with us -->

    <div id='contact' class="contact">
        <div class="contact-us">
            <form class="card-message" action="" method="post" style="max-width: 400px">
                    <Legend class="d-flex"><h3>Work with us</h3></Legend>
                <div class="form-group">
                        <label class="form-label" for="exampleInputPassword1">Name</label>
                        <input type="text" class="form-control" id="exampleInputName" placeholder="Name">
                </div>
                <div class="form-group">
                    <label class="form-label" for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <!-- <div class="form-group">
                    <label class="form-label" for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div> -->
                <div class="form-group">
                    <label class="form-label" for="exampleTextarea">Message</label>
                    <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                </div>
                
                <button type="submit" class="btn btn-light btn-submit" >Submit</button>
            </form>
          
        </div>
    </div>

</main>
<!-- Main Body -->
<?php include('inc/footer.php'); ?>