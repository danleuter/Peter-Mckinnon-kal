<?php
	require('config/config.php');
	require('config/db.php');

    include('assets/inc/featured_post.inc.php');
    include('assets/inc/header.php');
    include('assets/inc/navbar_client.php');
    
?>
    

<!-- Main Body -->
<main>
    <!-- landing page -->
    <div class="landing-page">
        <div class="landing-text text-white">
            <h1 class="text-white">Inspire. Travel. Learn.</h1>
            <p class='text-white initialism'>Photographer & Filmmaker. Lover of coffee and good stories.</p>
        </div>
    </div>
    <!-- End of Landing Page -->
<hr>
    <!-- Featured Articles -->
    
<div class="jumbotron d-flex flex-wrap" style="margin-top: 100px 10px 10px !important;">
    <?php foreach($posts as $post) : ?>
        <div class="card" style="width: 18rem; margin:10px; padding:10px;">
            <img class="article-thumbnail" src="assets/images/<?php echo $post['art_image']; ?>" alt="Card image cap">
             <div class="card-body">
                <h5 class="card-title"><?php echo $post['art_title']; ?></h5>
                <p class="card-text"><?php echo $post['art_desc']; ?></p>
                <a href="<?php echo ROOT_URL; ?>pages/articles.php?art_id=<?php echo $post['art_id']; ?>" class="btn btn-sm btn-primary">Read More</a>
            </div>
        </div>
    <?php endforeach; ?>
</div>


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

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="testimonial-slider" class="owl-carousel">
                <div class="testimonial">
                    <div class="pic">
                        <img src="https://scontent.fmnl6-2.fna.fbcdn.net/v/t1.0-9/49213496_2288531547833127_6741734409898033152_n.jpg?_nc_cat=111&_nc_ht=scontent.fmnl6-2.fna&oh=871d0a246712dd6ae703b95b3de887a6&oe=5D5CE759" alt="">
                    </div>
                    <div class="testimonial-content">
                        <p class="description">
                        I'm not a photographer or video-guy or whatever. No canadian, not from the US. I'm not a native english speaker and I don't give a shit about Lightroom or color grading... Yet, I watch your videos. Keep it up 👍</p>
                        <h3 class="testimonial-title">Dan Carandang
                            <small class="post">Artist</small>
                        </h3>
                    </div>
                </div>
 
                <div class="testimonial">
                    <div class="pic">
                        <img src="https://scontent.fmnl6-1.fna.fbcdn.net/v/t1.0-9/58698575_10216351193646606_4889066018699214848_n.jpg?_nc_cat=105&_nc_ht=scontent.fmnl6-1.fna&oh=21814bd01e2aa1f212a02584ac883801&oe=5D9E4557"b alt="">
                    </div>
                    <div class="testimonial-content">
                        <p class="description">
                        Peter it’s because of you that I was able to quit my job and pursue photography full time.because of you I have made my first 50kand was asked to work with iron light studios in Virginia.Its all cause of you thank you so much brother.
                        </p>
                        <h3 class="testimonial-title">Portia Vidamo
                            <small class="post">Web Designer</small>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<hr>
<!-- Work with us -->

    <div id='contact' class="contact">
        <div class="contact-us row">
            <form class="card-message col-lg-3 col-md-6 col-sm-6" action="" method="post">
                    <Legend class="d-flex"><h3>Work with us</h3></Legend>
                <div class="form-group">
                        <label class="form-label" for="exampleInputPassword1">Name</label>
                        <input type="text" class="form-control" id="exampleInputName" placeholder="Name">
                </div>
                <div class="form-group">
                    <label class="form-label" for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label class="form-label" for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
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
<?php include('assets/inc/footer.php'); ?>

<script>
    $(document).ready(function(){
        $("#testimonial-slider").owlCarousel({
            items:1,
            itemsDesktop:[1000,2],
            itemsDesktopSmall:[979,1],
            itemsTablet:[768,1],
            pagination:false,
            navigation:true,
            slideSpeed:1000,
            singleItem:true,
            transitionStyle:"goDown",
            navigationText:["",""],
            autoPlay:false
        });
    });    
</script>
</body>
</html>