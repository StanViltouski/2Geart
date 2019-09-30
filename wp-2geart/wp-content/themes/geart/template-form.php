<?php 

/**
* Template name: Form Template
*/



get_header(); ?>

	<main class="content mr-top">

		<section class="s-form s-white text-center">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h1>Free Review of Your Idea</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-sm-12">
						<form id="form_request" class="review" method="POST">
							<input type="hidden" name="project_name" value="2Geart">
							<input type="hidden" name="admin_email" value="info@example.com">
							<input type="hidden" name="project_subject" value="Send review form">

							<input type="text" name="name" placeholder="Name" required>
							<input type="email" name="email" placeholder="Email" required>
							<input type="text" name="title" placeholder="Title" required>
							<textarea name="message" placeholder="Description of your idea" required></textarea>
							
							<div class="button-wrap">

								<div class="button-upload">
									<label class="label-flex"><span class="file_name"></span></label>
    								<input type="file" name="file" id="file" class="inputfile" data-multiple-caption="{count} files selected" multiple />
                            		<label class="upload_button-margin" for="file"><i class="lnr lnr-paperclip"></i><span>File Attach</span></label>
								</div>

								<div>
									<button class="button btn-border">Send review<i class='lnr lnr-chevron-right'></i></button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</main>



<?php get_footer(); ?>