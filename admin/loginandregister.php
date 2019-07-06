<?php 
    require('../config/config.php');
    require('../config/db.php');
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Peter Mckinnon</title>
    <link rel="stylesheet" href="css/loginandregister.css">
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
    <script src='js/jquery.min.js'></script>

   
</head>
<body>
  	<div class="login-reg-panel">
		<div class="login-info-box">
			<h2>Have an account?</h2>
			<!-- <p>Lorem ipsum dolor sit amet</p> -->
			<label id="label-register" for="log-reg-show">Login</label>
			<input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
		</div>
							
		<div class="register-info-box">
			<h2>Don't have an account?</h2>
			<!-- <p>Lorem ipsum dolor sit amet</p> -->
			<label id="label-login" for="log-login-show">Register</label>
			<input type="radio" name="active-log-panel" id="log-login-show">
		</div>
							
		<div class="white-panel">
			<form class="login-show" action="<?php echo ROOT_URL_ADMIN; ?>inc/login.inc.php" method="POST">
				<h2>LOGIN</h2>
				<input name='username' type="text" placeholder="Username">
				<input type="password" name='password' placeholder="Password">
				<input name="login-submit" type='submit' value="Login">
				<a href="#">Forgot password?</a>
            </form>
			<form class="register-show" action="<?php echo ROOT_URL_ADMIN; ?>inc/signup.inc.php" method="POST" > 
                <h2>REGISTER</h2>
                <input type="text" name="firstname" placeholder="First Name">
                <input type="text" name='lastname' placeholder="Last Name">
                <input name='username' type="text" placeholder="Username">
                <input type="email" name="email" placeholder="Email">
				<input type="password" name="password" placeholder="Password">
				<input type="password" name="confirm" placeholder="Confirm Password">
                <input type="submit" name="signup-submit" class="login input-box form-control info-text">
            </form>
		</div>
    </div>
    
  <script>
    $(document).ready(function(){
    $('.login-info-box').fadeOut();
    $('.login-show').addClass('show-log-panel');
});


$('.login-reg-panel input[type="radio"]').on('change', function() {
    if($('#log-login-show').is(':checked')) {
        $('.register-info-box').fadeOut(); 
        $('.login-info-box').fadeIn();
        
        $('.white-panel').addClass('right-log');
        $('.register-show').addClass('show-log-panel');
        $('.login-show').removeClass('show-log-panel');
        
    }
    else if($('#log-reg-show').is(':checked')) {
        $('.register-info-box').fadeIn();
        $('.login-info-box').fadeOut();
        
        $('.white-panel').removeClass('right-log');
        
        $('.login-show').addClass('show-log-panel');
        $('.register-show').removeClass('show-log-panel');
    }
});



    
    
</script>
</body>
</html>