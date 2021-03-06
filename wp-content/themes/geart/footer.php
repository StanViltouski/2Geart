<?php  global $geart_option; ?>

<?php $custom_desk_footer_logo = ($geart_option['geart-footer-logo']['url']);
	  $footer_address = array();
	  array_push($footer_address, $geart_option['geart-city-title'], $geart_option['geart-city-address']);
	  $custom_social_nets = ($geart_option['social-nets']);
	  $custom_download_file = ($geart_option['geart-footer-upload-file']['url']);
	  $custom_email = ($geart_option['email']);
      $custom_telephone = ($geart_option['telephone']); 
      $custom_skype = ($geart_option['skype']); 
?>


<?php if( !is_front_page() ){?> 

	<div class="s-dark">
		<div class="container">
			<div class="row">
				<div class="col">
					<?php echo get_breadcrumbs(); ?>
			</div>
		</div>
	</div>	

<?php } ?>
	  

<section class="address_footer">
	<div class="container">

		<div class="addressFooter_title">Our Departments</div>
		<div class="row">

			<?php

				for ($i = 1; $i <= count($footer_address[0]); $i++) : ?>

				<div class="col-md-4 col-lg-2 addressFooter_block">
					<div class="addressFooter_city">
						<?php 
                    		if($footer_address[0]){ echo esc_html($footer_address[0]['City '. $i]); ?><i class="fa fa-chevron-down" aria-hidden="true"></i>
                     	<?php } else {  echo "No title"; } ?>
					</div>
					<div class="adressFooter_address">
						<?php 
                    		if($footer_address[1]){ echo esc_html($footer_address[1]['Address City ' . $i]); ?>
                     	<?php } else {  echo "No address"; } ?>
					</div>
				</div>

			<?php endfor ?>
					
		</div>
	</div>
</section>



<footer class="main-footer">
	<div class="container">
		<div class="row">

			<div class="col-md-4 col-lg-2 col-12 mainFooter_block mainFooter_block-logo">
				<div class="footer_logo">

					<?php if($custom_desk_footer_logo){ ?>
                    	<a href="/"><img src="<?php echo esc_url($custom_desk_footer_logo); ?>" title="2Geart Design Bureau" alt="logo"></a>
                	<?php 
                	} else { echo "No logo"; } ?> 
						
				</div>

				<div class="footerBotton_download">
					<a href="<?php if($custom_download_file){ echo esc_url($custom_download_file); } else { echo "#"; } ?>" download>Download PDF</a>
				</div>
			</div>

			<div class="col-md-4 col-lg-2 col-6 mainFooter_block mobil-hidden">
				<div class="footer-menu-items">
					<div class="footer-menu-item">
						<div class="mainFooterBlock_title">Services</div>
						<nav class="footer-menu">
							<?php wp_nav_menu([
                   				'theme_location'  => 'footer 1',
                   				'menu'            => 'footer-menu-1', 
                   				'container'       => false, 
                   				'menu_class'      => false, 
                   				'echo'            => true,
                   				'fallback_cb'     => 'wp_page_menu',
                   				'items_wrap'      => '<ul>%3$s</ul>',
                   				'depth'           => 0,

                			]);
                			?>
						</nav>
					</div>	
				</div>
			</div>

			<div class="col-md-4 col-lg-2 col-6 mainFooter_block mobil-hidden">
				<div class="footer-menu-items">
					<div class="footer-menu-item">
						<div class="mainFooterBlock_title">Portfolio</div>
						<nav class="footer-menu">
							<?php wp_nav_menu([
                   				'theme_location'  => 'footer 2',
                   				'menu'            => 'footer-menu-2', 
                   				'container'       => false, 
                   				'menu_class'      => false, 
                   				'echo'            => true,
                   				'fallback_cb'     => 'wp_page_menu',
                   				'items_wrap'      => '<ul>%3$s</ul>',
                   				'depth'           => 0,

                				]);
                			?>
						</nav>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-lg-2 col-6 mainFooter_block mobil-hidden">
				<div class="footer-menu-items">							
					<div class="footer-menu-item">
						<div class="mainFooterBlock_title">About</div>
						<nav class="footer-menu">
							<?php wp_nav_menu([
                   				'theme_location'  => 'footer 3',
                   				'menu'            => 'footer-menu-3', 
                   				'container'       => false, 
                   				'menu_class'      => false, 
                   				'echo'            => true,
                   				'fallback_cb'     => 'wp_page_menu',
                   				'items_wrap'      => '<ul>%3$s</ul>',
                   				'depth'           => 0,

                				]);
                			?>
						</nav>
					</div>
				</div>
			</div>							

			<div class="col-md-4 col-lg-2 col-6 mainFooter_block">
				<div class="mainFooterBlock_title">Contacts</div>
					
				<div class="contact_block footerContacts_mail">
					<?php if($custom_email){ ?> <a href="mailto:<?php echo ($custom_email); ?>"><i class="fa fa-envelope-o" aria-hidden="true"></i><?php echo($custom_email); ?></a>
                    <?php } else {echo "No email";} ?>
				</div>
				<div class="contact_block footerContacts_telephone">
					<?php if($custom_telephone){ ?><a href="tel:<?php echo ($custom_telephone); ?>"><i class="fa fa-phone" aria-hidden="true"></i><?php echo($custom_telephone); ?></a>
                   	<?php } else {echo "No telephone";} ?>
				</div>
				<div class="contact_block footerContacts_skype">
					<?php if($custom_skype){ ?> <a href="skype:<?php echo ($custom_skype); ?>?chat"><i class="fa fa-skype" aria-hidden="true"></i>2Geart</a>
                    <?php } else {echo "No name";} ?>
				</div>
			</div>

			<div class="col-md-4 col-lg-2 col-12 mainFooter_block mainFooter_block-social">
				<div class="social-wrap">

					<div class="mainFooterBlock_title">Follow Us</div>

					<div class="socialWrap_icons">
					<?php 
                    	if($custom_social_nets){ ?>

                    	<a href="<?php echo esc_url($custom_social_nets['Facebook']); ?>" target="_blank"><i class="fa fa-facebook"></i></a>
                    	<a href="<?php echo esc_url($custom_social_nets['Instagram']); ?>" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    	<a href="<?php echo esc_url($custom_social_nets['Behance']); ?>" target="_blank"><i class="fa fa-behance" aria-hidden="true"></i></a>
                    	<a href="<?php echo esc_url($custom_social_nets['Dribbble']); ?>" target="_blank"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                    	<a href="<?php echo esc_url($custom_social_nets['Linkedin']); ?>" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a>

                    <?php 
                       	} else {
                        	echo "No data";
                        } ?>

					</div>

				</div>

				<div class="button-wrap button-wrap-social"><a href="/contacts/" class="button button_mainFooter btn-white btn-arrow"><span>Contact Us</span><i class="lnr lnr-arrow-right"></i></a></div>
			</div>	

			<div class="copyrating">© 2015-<?php echo date('Y'); ?> Creative Bureau 2Geart</div>

		</div>
	</div>		
</footer>	


<?php wp_footer(); ?>


</body>
</html>