<?php
/**
 * Template Name: Page services Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
<?php while ( have_posts() ) : the_post(); ?>
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

		<section class="why_choose_us" style="margin-top: 35px;">
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
<?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>
<?php get_footer(); ?>