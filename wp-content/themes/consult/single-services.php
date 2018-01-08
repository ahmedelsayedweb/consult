<?php
/**
 * The template for displaying all single posts and attachments
 * Template Post Type: post
 * @package WordPress
 */
?>
<?php get_header(); ?>
 <?php 
	if (have_posts()){
		while (have_posts()){
			the_post(); ?>
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $title_page_about = ot_get_option( 'title_page_about' );
	  $description_page_about = ot_get_option( 'description_page_about' );
	}
    ?>
   <section class="why_choose_us">
			<div class="container">
				<div class="theme_title_center">
            <div class="l-main-content l-main-content_pd-rgt l-main-content_pd-top_lg">
              <div class="posts-group">
				  <div class="col-md-4">
					  <a href="<?php the_permalink(); ?>" class="js-zoom-images">
						  <img src="<?php the_post_thumbnail_url(); ?>" class="img-responsive"/>
					  </a>
					</div>	
                  </div>
                  <div class="col-md-8 entry-media">
					  <h2 class="ui-title-inner"><?php the_title(); ?></h2>
					  <?php the_content(); ?>
					</div>
					  
              </div>
            </div>
          </div>
</section>
<?php
							}
							}
						  	?> 
<?php get_footer(); ?>