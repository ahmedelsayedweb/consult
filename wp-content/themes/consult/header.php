<!DOCTYPE html>
<html <?php get_bloginfo('language') ?>>
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $logo = ot_get_option( 'logo' );
	  $facebook = ot_get_option( 'facebook' );
	  $instagram = ot_get_option( 'instagram' );
	  $twitter = ot_get_option( 'twitter' );
	  $linkedin = ot_get_option( 'linkedin' );
	  $call = ot_get_option( 'phone' );
	  $email = ot_get_option( 'email' );
	}
    ?>
	<head>
		<meta charset="<?php bloginfo('charset'); ?>"/>
		<title><?php wp_title('|','true','right'); ?><?php bloginfo('name'); ?></title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/ico" href="<?php echo $logo; ?>" />
		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
		<?php wp_head(); ?>
		
	</head>
		<body class="home">
		<div class="page_wrapper">
       <!-- ==================== Header ==================== -->

        <header class="p_color_bg">
        	<div class="container">
        		<div class="row">
	        		<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12 header_left">
	        			<ul>
	        				<li><i class="fa fa-envelope-o s_color" aria-hidden="true"></i>
								<a href="#"><?php echo $email; ?></a>
							</li>
	        				<li><i class="fa fa-phone s_color" aria-hidden="true"></i>
								<a href="#"><?php echo $call; ?></a></li>
	        			</ul>
	        		</div> <!-- End of .header_left -->
	        		<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12 header_right">
	        			<ul class="social_icon">
	        				<li><a href="<?php echo $facebook; ?>" class="tran3s" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="<?php echo $instagram; ?>" class="tran3s" title="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
	        				<li><a href="<?php echo $twitter; ?>" class="tran3s" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
	        				<li><a href="<?php echo $linkedin; ?>" class="tran3s" title="linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
	        			</ul>

	        			<div id="polyglotLanguageSwitcher">
								<?php
					if(is_active_sidebar('header')){
					dynamic_sidebar('header');
					}
					?>
						</div> <!-- End #polyglotLanguageSwitcher -->
	        		</div> <!-- End of .header_right -->
        		</div>  <!-- End of .row -->
        	</div> <!-- End of .container -->
        </header> <!-- End of header -->




        <!-- Menu ___________________________________ -->

        <div class="main_menu">
        	<div class="container">
        		<div class="logo float_left">
        			<a href="<?php bloginfo('url'); ?>">
						<img src="<?php echo $logo; ?>" alt="logo" class="img-responsive">
					</a>
        		</div> <!-- End of .logo -->

        		<nav class="navbar navbar-default float_left">
				   <!-- Brand and toggle get grouped for better mobile display -->
				   <div class="navbar-header">
				     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
				       <span class="sr-only">Toggle navigation</span>
				       <span class="icon-bar"></span>
				       <span class="icon-bar"></span>
				       <span class="icon-bar"></span>
				     </button>
				   </div>
				   <!-- Collect the nav links, forms, and other content for toggling -->
				   <div class="collapse navbar-collapse float_left" id="navbar-collapse-1">
					   <?php
  						$lang = custom_get_current_lang();
						if($lang == 'ar'){
							echo '  <ul class="nav navbar-nav">
				       <li><a href="http://localhost/psolvingegypt/consult/ar">الرئيسية</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/ar/about">عن الشركة</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/ar/services-2">الخدمات</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/ar/gallery-2">معرض الصور </a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/ar/contact-us">اتصل بنا</a></li>
				     </ul>'; 
							}elseif($lang == 'en'){
							echo '    <ul class="nav navbar-nav">
				       <li><a href="http://localhost/psolvingegypt/consult">Home</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/about-us">About Us</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/services">Services</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/gallery">Gallery</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/contact">Contact Us</a></li>
				     </ul>'; 
						};
				?>
				    
				   </div><!-- /.navbar-collapse -->
				</nav>

				
			<div class="clear_fix"></div>
        	</div> <!-- End of .container -->
        </div> 
			
		<!-- End of .main_menu -->