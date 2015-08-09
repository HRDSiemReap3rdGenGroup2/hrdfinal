<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Add News' Information</title>

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
		
        <link type="text/css" rel="stylesheet" href="../../assets/css/theme-default/libs/bootstrap-datepicker/datepicker3.css?1424887858">
        
		<!-- END STYLESHEETS -->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script type="text/javascript" src="../../assets/js/libs/utils/html5shiv.js?1403934957"></script>
		<script type="text/javascript" src="../../assets/js/libs/utils/respond.min.js?1403934956"></script>
		<![endif]-->
		
		<style>
			/*.form-control{
				height:61px;
			}*/
		</style>
	</head>
	<body class="menubar-hoverable header-fixed menubar-first full-content ">

		<!-- BEGIN HEADER-->
		<jsp:include page="../../include/header.jsp"></jsp:include>
		<!-- END HEADER-->

		<!-- BEGIN BASE-->
		<div id="base">

			<!-- BEGIN OFFCANVAS LEFT -->
			<div class="offcanvas">
			
			</div><!--end .offcanvas-->
			<!-- END OFFCANVAS LEFT -->

			<!-- BEGIN CONTENT-->
			<div id="content">

				<!-- BEGIN BLANK SECTION -->
				<section class="style-default-bright">
					
					<div class="section-body">
                        
                        <!-- BEGIN INTRO -->
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<form class="form">
									<div class="card">
										<div class="card-head style-primary">
											<header>Add News</header>
										</div>
										<div class="card-body floating-label">
											<div class="form-group">
												<input class="form-control" id="Username2" type="text">
												<label for="Username2">Khmer Title</label>
											</div>
                                            
                                            <div class="form-group">
												<input class="form-control" id="Username2" type="text">
												<label for="Username2">English Title</label>
											</div>
                                            
                                            <div class="form-group floating-label">
												<div class="input-group">
													<div class="input-group-content">
														<input class="form-control" id="groupbutton10" type="text">
														<label for="groupbutton10">Thumnail (285x170)</label>
													</div>
													<div class="input-group-btn">
														<button class="btn btn-default" type="button">Browse</button>
													</div>
												</div>
											</div>
                                            <div class="form-group floating-label">
												<select id="select2" name="select2" class="form-control">
													<option value="">&nbsp;</option>
													<option value="30">30</option>
													<option value="40">40</option>
													<option value="50">50</option>
													<option value="60">60</option>
													<option value="70">70</option>
												</select>
												<label for="select2">Category</label>
											</div>
                                            <div class="form-group">
												<div class="input-group date" id="demo-date">
													<div class="input-group-content">
														<input class="form-control" type="text">
														<label>Publish Date</label>
													</div>
													<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
												</div>
											</div>
                                            
                                            <!--begin language-->
                                            <div class="form-group">
                                                <div class="card tabs-left style-default-light">
                                                    <ul class="card-head nav nav-tabs" data-toggle="tabs">
                                                        <li class="active"><a href="#first5">KHMER CONTENTS</a></li>
                                                        <li class=""><a href="#second5">ENGLISH CONTENTS</a></li>
                                                        <li class=""><a href="#third5">VIDEOS</a></li>
                                                    </ul>
                                                    <div class="card-body tab-content style-default-bright">
                                                        <div class="tab-pane active" id="first5">
                                                            <!--BEGIN SUMMERNOTE  -->
                                                            <div class="card">
                                                                <div class="card-body no-padding">
                                                                    <div id="summernote">

                                                                    </div>
                                                                </div><!--end .card-body -->
                                                            </div><!--end .card -->
                                                            <!-- END SUMMERNOTE -->
                                                        </div>
                                                        <div class="tab-pane" id="second5">
                                                            <!--BEGIN SUMMERNOTE  -->
                                                            <div class="card">
                                                                <div class="card-body no-padding">
                                                                    <div id="summernote1">

                                                                    </div>
                                                                </div><!--end .card-body -->
                                                            </div><!--end .card -->
                                                            <!-- END SUMMERNOTE -->
                                                        </div>
                                                        <div class="tab-pane" id="third5">
                                                            <!--BEGIN SUMMERNOTE  -->
                                                            <div class="card">
                                                                <div class="card-body no-padding">
                                                                    <div id="summernote2">

                                                                    </div>
                                                                </div><!--end .card-body -->
                                                            </div><!--end .card -->
                                                            <!-- END SUMMERNOTE -->
                                                        </div>
                                                    </div><!--end .card-body -->
                                                </div><!--end .card -->
                                            </div><!--/end language-->
                                            
										</div><!--end .card-body -->
                                        
										<div class="card-actionbar">
											<div class="card-actionbar-row">
												<button type="submit" class="btn btn-flat btn-primary ink-reaction">SAVE</button>
											</div>
										</div>
									</div><!--end .card -->
								</form>
							</div>
						</div><!--end .row -->
						<!-- END INTRO -->

					</div>
					
				</section>
				<!-- BEGIN BLANK SECTION -->
			
			</div><!--end #content-->
			<!-- END CONTENT -->

			<!-- BEGIN MENUBAR-->
			<jsp:include page="../../include/menubar.jsp"></jsp:include>
			<!-- END MENUBAR -->


		</div><!--end #base-->
		<!-- END BASE -->

		<!-- BEGIN JAVASCRIPT -->
		<script src="../../assets/js/libs/jquery/jquery-1.11.2.min.js"></script>
        <script src="../../assets/js/libs/bootstrap-datepicker/bootstrap-datepicker.js"></script>
		<script src="../../assets/js/core/demo/DemoFormComponents.js"></script>
        
        <script src="../../assets/js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
		<script src="../../assets/js/libs/bootstrap/bootstrap.js"></script>
		<script src="../../assets/js/libs/spin.js/spin.min.js"></script>
		<script src="../../assets/js/libs/autosize/jquery.autosize.min.js"></script>
		<script src="../../assets/js/libs/nanoscroller/jquery.nanoscroller.min.js"></script>
		<script src="../../assets/js/libs/ckeditor/adapters/jquery.js"></script>
		<script src="../../assets/js/libs/summernote/summernote.min.js"></script>
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