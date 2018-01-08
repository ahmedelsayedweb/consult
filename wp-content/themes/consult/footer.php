<!-- FOOTER-->
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	 $logo = ot_get_option( 'logo' );
	$title_about = ot_get_option( 'title_about' );
	  $description_about = ot_get_option( 'description_about' );
	  $facebook = ot_get_option( 'facebook' );
		$instagram = ot_get_option( 'instagram' );
	  $twitter = ot_get_option( 'twitter' );
	  $linkedin = ot_get_option( 'linkedin' );
	 $call = ot_get_option( 'phone' );
	  $email = ot_get_option( 'email' );
	  $flaticon_clock = ot_get_option( 'flaticon_clock' );
	  $address = ot_get_option( 'address' );
	}
    ?>
<!-- Footer ____________________________ -->

   		<footer>
   			<div class="overlay">
   				<div class="main_footer">
   					<div class="container">
   						<div class="row">
   							<div class="col-lg-6 col-md-8 col-xs-12 footer_logo">
   								<div class="theme_title">
									<h4><?php echo $title_about; ?></h4>
								</div>
   								<?php echo $description_about; ?>
   								<ul class="social_icon">
			        				<li><a href="<?php echo $facebook; ?>" class="tran3s" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="<?php echo $instagram; ?>" class="tran3s" title="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
	        				<li><a href="<?php echo $twitter; ?>" class="tran3s" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			        				<li><a href="<?php echo $linkedin; ?>" class="tran3s" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
			        			</ul>
   							</div> <!-- End of .footer_logo -->

   							<div class="col-lg-2 col-md-4  col-xs-12 quick_links">
   								<div class="theme_title">
									<?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								echo '<h4>الروابط المهمه</h4>'; 
								}elseif($lang == 'en'){
								echo '<h4>Links</h4>'; 
							};
								?>
									
								</div>
<?php
  						$lang = custom_get_current_lang();
						if($lang == 'ar'){
							echo '  <ul class="float_left">
						<li><a href="http://localhost/psolvingegypt/consult/ar">الرئيسية</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/ar/about">عن الشركة</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/ar/services-2">الخدمات</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/ar/gallery-2">معرض الصور </a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/ar/contact-us">اتصل بنا</a></li>
								</ul>'; 
							}elseif($lang == 'en'){
							echo '  <ul class="float_left">
						<li><a href="http://localhost/psolvingegypt/consult">Home</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/about-us">About Us</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/services">Services</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/gallery">Gallery</a></li>
				       <li><a href="http://localhost/psolvingegypt/consult/contact">Contact Us</a></li>
								</ul>'; 
						};
				?> 
								
								<div class="clear_fix"></div>
   							</div> <!-- End of .quick_links -->

   							<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 footer_contact">
   								<div class="theme_title">
									<?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								echo '<h4>اتصل بنا</h4>'; 
								}elseif($lang == 'en'){
								echo '<h4>Contact Us</h4>'; 
							};
								?>
									
								</div>
								<p><span class="ficon flaticon-map"></span> <?php echo $address; ?></p>
								<p><span class="ficon flaticon-phone"></span> <?php echo $call; ?></p>
								<p><span class="ficon flaticon-messagetwo"></span> <?php echo $email; ?></p>
								<p><span class="ficon flaticon-clock"></span> <?php echo $flaticon_clock; ?></p>
   							</div> <!-- End of .footer_contact -->
   						</div> <!-- End of .row -->
   					</div> <!-- End of .container -->
   				</div> <!-- End of .main_footer -->

   				<div class="bottom_footer">
   					<div class="container">
   						<p class="float_left font_fix">© Copyright 2017 Design & Developer With  By Problem Solving Egypt</p>
   						<ul class="float_right">
   							<li><a href="<?php echo $facebook; ?>" class="tran3s" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li> 
							<li><a href="<?php echo $instagram; ?>" class="tran3s" title="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
	        				<li><a href="<?php echo $twitter; ?>" class="tran3s" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			        		<li><a href="<?php echo $linkedin; ?>" class="tran3s" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
   						</ul>
   						<div class="clear_fix"></div>
   					</div>
   				</div> <!-- End of .bottom_footer -->
   			</div> <!-- End of .overlay -->
   		</footer>


			<!-- Scroll Top Button -->
			<button class="scroll-top tran3s s_color_bg border_round">
				<span class="ficon flaticon-up-arrow"></span>
			</button>

    
<?php wp_footer(); ?>
</body>	
</html>