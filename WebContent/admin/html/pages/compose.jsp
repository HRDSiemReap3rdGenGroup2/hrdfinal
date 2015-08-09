<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Compose mail Page</title>

		<!-- BEGIN META -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="keywords" content="your,keywords">
		<meta name="description" content="Short explanation about this website">
		<!-- END META -->

		<!-- BEGIN STYLESHEETS -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css'/>
		<link type="text/css" rel="stylesheet" href="../../assets/css/theme-default/bootstrap.css?1422792965" />
		<link type="text/css" rel="stylesheet" href="../../assets/css/theme-default/materialadmin.css?1425466319" />
		<link type="text/css" rel="stylesheet" href="../../assets/css/theme-default/font-awesome.min.css?1422529194" />
		<link type="text/css" rel="stylesheet" href="../../assets/css/theme-default/material-design-iconic-font.min.css?1421434286" />
		<link type="text/css" rel="stylesheet" href="../../assets/css/theme-default/libs/summernote/summernote.css?1425218701" />
		<!-- END STYLESHEETS -->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script type="text/javascript" src="../../assets/js/libs/utils/html5shiv.js?1403934957"></script>
		<script type="text/javascript" src="../../assets/js/libs/utils/respond.min.js?1403934956"></script>
		<![endif]-->
	</head>
	<body class="menubar-hoverable header-fixed menubar-first full-content ">

		<!-- BEGIN HEADER-->
		<jsp:include page="../../include/header.jsp"></jsp:include>
		<!-- END HEADER-->

		<!-- BEGIN BASE-->
		<div id="base">

			<!-- BEGIN CONTENT-->
			<div id="content">
				<section class="has-actions style-default-bright">

					<!-- BEGIN INBOX -->
					<div class="section-body">
						<div class="row">
							<!-- BEGIN MAIL COMPOSE -->
							<div class="col-sm-12 col-md-12 col-lg-12">
								<h3>Compose</h3>
								<form class="form" id="formCompose">
									<div class="form-group floating-label">
										<input type="email" class="form-control" id="to1" name="to1" >
										<label for="to1">To</label>
										<a class="link-default pull-right" href="#emailOptions" data-toggle="collapse">More</a>
									</div><!--end .form-group -->
									<div id="emailOptions" class="collapse">
										<div class="form-group floating-label">
											<input type="email" class="form-control" id="cc1" name="cc1" >
											<label for="cc1">CC</label>
										</div><!--end .form-group -->
										<div class="form-group floating-label">
											<input type="email" class="form-control" id="bcc1" name="bcc1" >
											<label for="bcc1">BCC</label>
										</div><!--end .form-group -->
									</div><!--end #emailOptions -->
									<div class="form-group floating-label">
										<input type="text" class="form-control" id="Subject1" name="Subject1" >
										<label for="Subject1">Subject</label>
									</div><!--end .form-group -->
									<div class="form-group">
										<textarea id="simple-summernote" name="message" class="form-control control-6-rows" spellcheck="false"></textarea>
									</div><!--end .form-group -->
								</form>
							</div><!--end .col -->
							<!-- END MAIL COMPOSE -->

						</div><!--end .row -->
					</div><!--end .section-body -->
					<!-- END INBOX -->

					<!-- BEGIN SECTION ACTION -->
					<div class="section-action style-primary">
						<div class="section-action-row">
							<a class="btn ink-reaction btn-icon-toggle" href="../../html/mail/inbox.html"><i class="fa fa-chevron-left"></i></a>
						</div>
						<div class="section-floating-action-row">
							<a class="btn ink-reaction btn-floating-action btn-lg btn-accent" href="#formCompose" data-submit="form"><i class="md md-send"></i></a>
						</div>
					</div>
					<!-- END SECTION ACTION -->

				</section>
			</div><!--end #content-->
			<!-- END CONTENT -->

			<!-- BEGIN MENUBAR-->
            <jsp:include page="../../include/menubar.jsp"></jsp:include>
			<!-- END MENUBAR -->

		</div><!--end #base-->
		<!-- END BASE -->

		<!-- BEGIN JAVASCRIPT -->
		<script src="../../assets/js/libs/jquery/jquery-1.11.2.min.js"></script>
		<script src="../../assets/js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
		<script src="../../assets/js/libs/bootstrap/bootstrap.js"></script>
		<script src="../../assets/js/libs/spin.js/spin.min.js"></script>
		<script src="../../assets/js/libs/autosize/jquery.autosize.min.js"></script>
		<script src="../../assets/js/libs/nanoscroller/jquery.nanoscroller.min.js"></script>
		<script src="../../assets/js/libs/ckeditor/ckeditor.js"></script>
		<script src="../../assets/js/libs/ckeditor/adapters/jquery.js"></script>
		<script src="../../assets/js/libs/summernote/summernote.js"></script>
		<script src="../../assets/js/core/source/App.js"></script>
		<script src="../../assets/js/core/source/AppNavigation.js"></script>
		<script src="../../assets/js/core/source/AppOffcanvas.js"></script>
		<script src="../../assets/js/core/source/AppCard.js"></script>
		<script src="../../assets/js/core/source/AppForm.js"></script>
		<script src="../../assets/js/core/source/AppNavSearch.js"></script>
		<script src="../../assets/js/core/source/AppVendor.js"></script>
		<script src="../../assets/js/core/demo/Demo.js"></script>
		<script src="../../assets/js/core/demo/DemoFormEditors.js"></script>
		<!-- END JAVASCRIPT -->

	</body>
</html>
