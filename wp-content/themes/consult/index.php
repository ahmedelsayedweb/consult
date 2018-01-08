<?php get_header(); ?>
    <div class="page-content">
        
		<!-- Slider END -->
		<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $title_about = ot_get_option( 'title_about' );
	  $description_about = ot_get_option( 'description_about' );
	  $text_slider = ot_get_option( 'text_slider' );
	  $title_contact = ot_get_option( 'title_contact' );
	  $description_contact = ot_get_option( 'description_contact' );
	  $title_img_2 = ot_get_option( 'title_img_2' );
	  $img_2 = ot_get_option( 'img_2' );
	  $description_img_2 = ot_get_option( 'description_img_2' );
	}
    ?>
            <!-- Banner ___________________________________ -->

		<section class="banner">
			<div class="rev_slider_wrapper">
				<div id="main_slider" class="rev_slider"  data-version="5.0">
					<ul>
							<?php 
		if ( function_exists( 'ot_get_option' ) ) {			
		  $slides = ot_get_option( 'banner', array() );	
		  if ( ! empty( $slides ) ) {
			foreach( $slides as $slide ) {
			  echo '
			  <li data-index="rs-355" class="slide_show slide_1" data-transition="boxslide" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-title="Slide Boxes" >
			  <img src="' . $slide['image'] . '" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" >
			  </li>
			  ';
			}
		  }
		}	
	  ?>				
						 <!-- /Slide_show -->
						
					</ul>
				</div> <!-- /main_slider -->
			</div> <!-- /rev_slider_wrapper -->
		</section> 
			
			
			<!-- /banner -->




		<!-- Request Quote _____________________________________ -->
		<div class="request_quote">
			<div class="container">
				<p class="float_left"><?php echo $text_slider; ?></p>
				<a href="#" class="theme_button s_color_bg float_right tran3s">
					<?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo 'من نحن'; 
						}elseif($lang == 'en'){
						echo  'About Us'; 
					};
				  	?>
					
				</a>
				<div class="clear_fix"></div>
			</div> <!-- End of .container -->
		</div> 
			
			<!-- End of .request_quote -->
				<!-- About ConsultPress & Testimonial ____________ -->

		<div class="about_testimonial">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 about_ConsultPress">
						<div class="theme_title">
							<h3><?php echo $title_about; ?></h3>
						</div>
						<p><?php echo $description_about; ?></p>
					</div> <!-- End of .about_ConsultPress -->
				</div> <!-- End of .row -->
			</div> <!-- End of .container -->
		</div> <!-- End of .about_testimonial -->



		<!-- What Makes us Special _________________________ -->

		<div class="makesUs_special">
			<div class="overlay">
				<div class="container">
					<div class="theme_title">
						<?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo '<h2>What Makes us Special?</h2>'; 
						}elseif($lang == 'en'){
						echo  '<h2>What Makes us Special?</h2>'; 
					};
				  	?>
						
					</div>
					<div class="row">
						<!-- _____________ Item ____________ -->
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="special_item">
								<div class="icon float_left"><span class="ficon flaticon-peopletwo"></span></div> <!-- End of .icon -->
								<div class="text float_left">
									<span class="timer" data-from="1" data-to="100" data-speed="5000" data-refresh-interval="50">100</span>
									<?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo '<p>Projects Completed</p>'; 
						}elseif($lang == 'en'){
						echo  '<p>Projects Completed</p>'; 
					};
				  	?>
									
								</div> <!-- End of .text -->
								<div class="clear_fix"></div>
							</div> <!-- End of .special_item -->
						</div> <!-- End of .col -->

						<!-- _____________ Item ____________ -->
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="special_item">
								<div class="icon float_left"><span class="ficon flaticon-screen"></span></div> <!-- End of .icon -->
								<div class="text float_left">
									<span class="timer" data-from="100" data-to="230" data-speed="5000" data-refresh-interval="50">230</span>
										<?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo '<p>Consultants</p>'; 
						}elseif($lang == 'en'){
						echo  '<p>Consultants</p>'; 
					};
				  	?>
									
								</div> <!-- End of .text -->
								<div class="clear_fix"></div>
							</div> <!-- End of .special_item -->
						</div> <!-- End of .col -->

						<!-- _____________ Item ____________ -->
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="special_item">
								<div class="icon float_left"><span class="ficon flaticon-badge"></span></div> <!-- End of .icon -->
								<div class="text float_left">
									<span class="timer" data-from="10" data-to="90" data-speed="4500" data-refresh-interval="50">90</span>
										<?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo '<p>Awwards winning</p>'; 
						}elseif($lang == 'en'){
						echo  '<p>Awwards winning</p>'; 
					};
				  	?>
									
								</div> <!-- End of .text -->
								<div class="clear_fix"></div>
							</div> <!-- End of .special_item -->
						</div> <!-- End of .col -->


						<!-- _____________ Item ____________ -->
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="special_item">
								<div class="icon float_left"><span class="ficon flaticon-smile"></span></div> <!-- End of .icon -->
								<div class="text float_left">
									<span class="timer" data-from="1" data-to="100" data-speed="5000" data-refresh-interval="50">100</span><span>%</span>
										<?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo '<p>Satisfied clients</p>'; 
						}elseif($lang == 'en'){
						echo  '<p>Satisfied clients</p>'; 
					};
				  	?>
									
								</div> <!-- End of .text -->
								<div class="clear_fix"></div>
							</div> <!-- End of .special_item -->
						</div> <!-- End of .col -->

					</div> <!-- End of .row -->
				</div> <!-- End of .container -->
			</div> <!-- End of .overlay -->
		</div> <!-- End of .makesUs_special -->


<?php
			$cats = [];
						$args = array(
								'post_type' => 'services',
								'posts_per_page' => 8,
						);
						$product_query = new WP_Query( $args );
							 ?>
						<?php if ( $product_query->have_posts() ) : ?>
			<?php $i = 1; ?>
							<?php while ($product_query->have_posts()) : $product_query->the_post(); 
			$categories = get_the_category();
			$cats = array_merge($cats, $categories);
			?>
			<?php endwhile; endif; ?>

		<!-- Why Choose Us ________________________ -->

		<section class="why_choose_us">
			<div class="container">
				<div class="theme_title_center">
					<?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo '<h2>الخدمات</h2>'; 
						}elseif($lang == 'en'){
						echo  '<h2>Services</h2>'; 
					};
				  	?>
					
					<span></span>
				</div> <!-- End of .theme_title_center -->

				<div class="row">
<?php if ( $product_query->have_posts() ) : ?>
			<?php $i = 0; ?>
			<?php while ($product_query->have_posts()) : $product_query->the_post();
			$categories = get_the_category();
			$slug = '';
			foreach($categories  as $cat){
			if(isset($cat->slug)){
				$slug .= $cat->slug;
			}
			}
			?>
					<!-- ______________ Item _____________ -->
					<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
						<div class="choose_us_item tran3s">
							<div class="icon">
						<a href="<?php the_permalink(); ?>"><img src="<?php the_post_thumbnail_url(); ?>" class="img-responsive"></a>
							</div> <!-- End of .icon -->
							<div class="text float_left">
						<a href="<?php the_permalink(); ?>"><h5 class="tran3s"><?php the_title(); ?></h5></a>
								<p class="tran3s"><?php the_excerpt(); ?></p>
							</div> <!-- End of .text -->
							<div class="clear_fix"></div>
						</div> <!-- End of .choose_us_item -->
					</div> <!-- End of .col -->
<?php $i++;
									?>
							
			<?php endwhile; endif; ?>
				</div>
			</div> <!-- End of .container -->
		</section> <!-- End of .why_choose_us -->	

		<div class="ourWP_team req_callBack">
			<div class="overlay">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 callBack_text">
						<div class="theme_title">
							<h2><?php echo $title_contact; ?></h2>
						</div>

						<h5><?php echo $description_contact; ?></h5>
					</div> <!-- End of .callBack_text -->

					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 req_callBackForm">
						
						<form action="#">
							<?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo do_shortcode('[contact-form-7 id="38" title="contact ar"]'); 
						}elseif($lang == 'en'){
						echo do_shortcode('[contact-form-7 id="4" title="Contact form 1"]'); 
					};
				  	?> 
						</form>
					</div> <!-- End of .req_callBackForm -->
				</div> <!-- End of .row -->
			</div> <!-- End of .container -->
		</div>
		</div><!-- End of .req_callBack -->


		<!-- Partner Logo _________________________ -->

        <div class="container partners">
			
				<?php echo do_shortcode('[logo-slider]'); ?>
			
		</div>
	
	
<?php get_footer(); ?>