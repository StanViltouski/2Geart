<?php 

/**
* Template name: Form Template
*/



get_header(); ?>

	<main class="content mr-top">
		<div class="preloader">
        	<div class="preloader_progress"></div>
        </div>

		<section class="s-form s-white text-center">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h1>Free Review of Your Idea</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-sm-12">

						<form id="form_request" class="review" enctype="multipart/form-data" method="POST">
							
							<input type="hidden" name="project_name" value="2Geart">
							<input type="hidden" name="admin_email" value="overnoise@tut.by">
							<input type="hidden" name="project_subject" value="Send review form">

							<input type="text" name="name" placeholder="Name" required>
							<input type="email" name="email" placeholder="Email" required>
							<input type="text" name="title" placeholder="Title">
							<textarea name="message" placeholder="Description of your idea"></textarea>

							<div class="button-upload">
								<label class="label-flex"><span class="file_name"></span></label>
    							<input type="file" name="file[]" id="file" class="inputfile" data-multiple-caption="{count} files selected" multiple />
                            	<label class="upload_button-margin" for="file"><i class="lnr lnr-paperclip"></i><span>File Attach</span></label>
							</div>
							
							<div class="button-wrap">

								<div class="form_confirm">
									<div class="form-check checkbox_rules">
     									<input class="form-check-input is-invalid checkbox-custom invalidCheck" type="checkbox" value="" id="invalidCheck">
     									<label class="form-check-label" for="invalidCheck"></label>
     									<span>I have read and accepted 2Geart <a href="">Privacy Policy</a></span>
									</div>
									<div class="form-check checkbox_rules">
									     <input class="form-check-input is-invalid checkbox-custom invalidCheck2" type="checkbox" value="" id="invalidCheck2">
									     <label class="form-check-label" for="invalidCheck2"></label>
									     <span>I accept <a href="">the Data Processing Rules of 2Geart</a></span>
									</div>
								</div>

								<button class="button btn btn-border btn_submit" disabled>Send review<i class='lnr lnr-chevron-right'></i></button>

							</div>
						</form>

					</div>
				</div>
			</div>
		</section>
	</main>



<?php get_footer(); ?>