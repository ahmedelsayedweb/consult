<?php
/**
 * Template Name: Page gallery Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
<?php while ( have_posts() ) : the_post(); ?>
<div class="about_testimonial">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 about_ConsultPress">
						<div class="theme_title">
							<h3><?php the_title(); ?></h3>
						</div>
						<div class="image">
                        	<img src="<?php the_post_thumbnail_url(); ?>" alt="" />
                        </div>
						<p><?php the_content(); ?></p>
					</div> <!-- End of .about_ConsultPress -->
				</div> <!-- End of .row -->
			</div> <!-- End of .container -->
		</div> 
     
<?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>
<?php get_footer(); ?>