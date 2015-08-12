<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Add User's Information</title>

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
			<input type="hidden" value="${param.id }" id="user_id">		
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
								<div class="form">
									<c:set value="${requestScope.user }" var="user"></c:set>
									<div class="card">
										<div class="card-head style-primary">
											<c:choose>
												<c:when test="${user.status==1 }">
													<header>Update Account</header>
												</c:when>
												<c:otherwise>
													<header>Create Account</header>
												</c:otherwise>
											</c:choose>
										</div>
										<div class="card-body floating-label">
											<div>
												<c:choose>
													<c:when test="${user.gender=='male' }">
														<label class="radio-inline radio-styled">
															<input name="gender" value="male" checked="true" type="radio"><span>Male</span>
														</label>
														<label class="radio-inline radio-styled">
															<input name="gender" value="female" type="radio"><span>Female</span>
														</label>
													</c:when>
													<c:otherwise>
														<label class="radio-inline radio-styled">
															<input name="gender" value="male" type="radio"><span>Male</span>
														</label>
														<label class="radio-inline radio-styled">
															<input name="gender" value="female" checked="true" type="radio"><span>Female</span>
														</label>
													</c:otherwise>
												</c:choose>
											</div><br>
											<div class="form-group">
												<c:choose>
													<c:when test="${user.status==1 }">
														<input class="form-control" id="username" name="username" type="text" value="${user.user_name }">
													</c:when>
													<c:otherwise>
														<input class="form-control" id="username" name="username" type="text">
													</c:otherwise>
												</c:choose>
												<label for="Username2">Username</label>
											</div>
											<div class="form-group">
												<c:choose>
													<c:when test="${user.status==1 }">
														<input class="form-control" id="password" name="password" type="password" value="*************">
													</c:when>
													<c:otherwise>
														<input class="form-control" id="password" name="password" type="password">
													</c:otherwise>
												</c:choose>
												<label for="Password2">Password</label>
											</div>
											<div class="form-group">
												<c:choose>
													<c:when test="${user.status==1 }">
														<input class="form-control" id="password1" type="password" value="*************">
													</c:when>
													<c:otherwise>
														<input class="form-control" id="password1" type="password">
													</c:otherwise>
												</c:choose>
												<label for="Password2">Confirm Password</label>
											</div>
											<div class="form-group">
												<c:choose>
													<c:when test="${user.status==1 }">
														<input class="form-control" id="email" name="email" type="email" value="${user.email }">
													</c:when>
													<c:otherwise>
														<input class="form-control" id="email" name="email" type="email">
													</c:otherwise>
												</c:choose>
												<label for="Password2">Email</label>
											</div>
                                            <div class="form-group floating-label">
												<select id="usertype" name="usertype" class="form-control">
													<c:choose>
														<c:when test="${user.user_type==1 }">
															<option value="1">Admin</option>
															<option value="3">Visitor</option>
                                                   			<option value="2">Editor</option>
														</c:when>
														<c:when test="${user.user_type==2 }">
															<option value="2">Editor</option>
															<option value="3">Visitor</option>
															<option value="1">Admin</option>
														</c:when>
														<c:when test="${user.user_type==3 }">
															<option value="3">Visitor</option>
		                                                    <option value="2">Editor</option>
		                                                    <option value="1">Admin</option>
														</c:when>
														<c:otherwise>
															<option value="">&nbsp;</option>
															<option value="3">Visitor</option>
		                                                    <option value="2">Editor</option>
		                                                    <option value="1">Admin</option>
														</c:otherwise>
													</c:choose>
													
												</select>
												<label for="select2">User Type</label>
											</div>
                                            
											<div class="checkbox checkbox-styled">
												<label>
													<input value="" id="subscribe" name="subscribe" type="checkbox">
													<span>Subscribe</span>
												</label>
											</div>
										</div><!--end .card-body -->
										<div class="card-actionbar">
											<div class="card-actionbar-row">
												<c:choose>
													<c:when test="${user.status==1 }">
														<button id="btnupdate" class="btn btn-flat btn-primary ink-reaction">Update account</button>
													</c:when>
													<c:otherwise>
														<button id="btncreate" class="btn btn-flat btn-primary ink-reaction">Create account</button>
													</c:otherwise>
												</c:choose>
												
											</div>
										</div>
									</div><!--end .card -->
								 </div>
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
		<script src="../../assets/js/libs/jquery/jquery-1.11.3.js"></script>
		<script src="../../assets/js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
		<script src="../../assets/js/libs/bootstrap/bootstrap.js"></script>
		<script src="../../assets/js/libs/spin.js/spin.min.js"></script>
		<script src="../../assets/js/libs/autosize/jquery.autosize.min.js"></script>
		<script src="../../assets/js/libs/nanoscroller/jquery.nanoscroller.min.js"></script>
		<script src="../../assets/js/core/source/App.js"></script>
		<script src="../../assets/js/core/source/AppNavigation.js"></script>
		<script src="../../assets/js/core/source/AppOffcanvas.js"></script>
		<script src="../../assets/js/core/source/AppCard.js"></script>
		<script src="../../assets/js/core/source/AppForm.js"></script>
		<script src="../../assets/js/core/source/AppNavSearch.js"></script>
		<script src="../../assets/js/core/source/AppVendor.js"></script>
		<script src="../../assets/js/core/demo/Demo.js"></script>
		<!-- END JAVASCRIPT -->
		
		<script>
			$(document).ready(function(){
				
				$('#btncreate').click(function(){
					
					var username=$('#username').val();
					var password=$('#password').val();
					var usertype=$('#usertype').val();
					var gender=$('input[type=radio]:checked').val();
					var subscribe = 0;
					var email = $('#email').val();
					
					if($('#subscribe').is(':checked')){
						subscribe=1;
					}else
						subscribe=0;
					
					$.post('adduser',{
							email:email,username:username,password:password,usertype:usertype,gender:gender,subscribe:subscribe
						},function(data){
						alert('success');
					});
					
				});
				
				$('#btnupdate').click(function(){
					
					var username=$('#username').val();
					var password=$('#password').val();
					var usertype=$('#usertype').val();
					var gender=$('input[type=radio]:checked').val();
					var subscribe = 0;
					var email = $('#email').val();
					
					if($('#subscribe').is(':checked')){
						subscribe=1;
					}else
						subscribe=0;
					
					$.post('adduser',{
							email:email,username:username,password:password,usertype:usertype,gender:gender,subscribe:subscribe
						},function(data){
						alert('success');
					});
					
				});
				
			});
		</script>
		
	</body>
</html>
