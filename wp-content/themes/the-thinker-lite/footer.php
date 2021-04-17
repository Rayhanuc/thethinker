<?php
/**
 * The template for displaying the footer.
 *
 * Contains the footer content
 *
 * @package The Thinker Lite
 */
?>
	<div class="footer">
		<div class="page hfeed site">
			<div class="footerwidgets">
				<?php get_sidebar( 'footer' ); ?>
			</div><!-- .footerwidgets -->
		</div><!-- .page -->
	</div><!-- .footer -->
	<footer id="colophon" class="site-footer clear" role="contentinfo">
		<div class="page hfeed site">
		<?php if( get_theme_mod( 'hide_copyright' ) == '') { ?>
			<div class="site-info">
			<?php
			if ( function_exists( 'the_privacy_policy_link' ) ) {
			the_privacy_policy_link( '', '<span role="separator" aria-hidden="true">|</span>' );
			}
		    ?>
		    <?php
			/**
			* Fires before the The Thinker Lite footer text for footer customization.
			*
			* @since The Thinker Lite 1.0
			*/
			do_action( 'thinker_credits' );
		    ?>
		    <?php if(!get_theme_mod('thinker_copyright')) : ?>
		    <a href="<?php echo esc_url( esc_html__( 'https://www.anarieldesign.com/the-thinker-lite-free-wordpress-theme/', 'the-thinker-lite' ) ); ?>"><?php printf( esc_html__( 'Theme: %1$s', 'the-thinker-lite' ), 'The Thinker Lite' ); ?></a>
		    <?php else: ?>
		    <?php esc_attr_e('&copy;', 'the-thinker-lite'); ?>
		    <a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>"> <?php echo esc_html( get_theme_mod( 'thinker_copyright', __( 'Built using The Thinker Lite Theme. Proudly powered by WordPress.', 'thinker-lite' ) ) ); ?> </a>
			<?php endif; ?>			
			</div>
			<?php } // end if ?>
			<!-- .site-info -->
			<?php if ( has_nav_menu( 'social' ) ) : // Check if there's a menu assigned to the 'social' location. ?>
			<?php wp_nav_menu(
				array(
					'theme_location'  => 'social',
					'container'       => 'div',
					'container_id'    => 'menu-social',
					'container_class' => 'menusocial',
					'menu_id'         => 'menu-social-items',
					'menu_class'      => 'menu-items',
					'depth'           => 1,
					'link_before'     => '<span class="text">',
					'link_after'      => '</span>',
					'fallback_cb'     => '',
				)
			); ?>
		  <?php endif; // End check for menu. ?>
		</div><!-- #page -->
	</footer><!-- #colophon -->
	<?php wp_footer(); ?>
</body></html>