<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>
    <html class="lt-ie9 lt-ie8 lt-ie7" lang="en">
  <![endif]-->

  <!--[if IE 7]>
    <html class="lt-ie9 lt-ie8" lang="en">
  <![endif]-->

  <!--[if IE 8]>
    <html class="lt-ie9" lang="en">
  <![endif]-->

  <!--[if gt IE 8]>
    <!-->
    <html lang="en">
    <!--
  <![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="author" content="Srinu Basava">
	<meta name="description" content="KANews Admin">
	<meta name="keywords" content="kanews Admin, Admin UI, Admin Dashboard, SRG2">
	<meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport">
	<script src="js/html5-trunk.js"></script>
	<link href="icomoon/style.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<!--[if lte IE 7]>
      <script src="css/icomoon-font/lte-ie7.js"></script>
    <![endif]-->
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-40571798-1' ]);
		_gaq.push([ '_trackPageview' ]);
		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	<title>Login Admin</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span4 offset4">
				<div class="signin">
					<h1 class="center-align-text">Login</h1>
					<form action="login" class="signin-wrapper" method="post">
						<div class="content">
							<input autocomplete="off" class="input input-block-level" placeholder="Username" type="text" value="" required name="username"> 
							<input class="input input-block-level" placeholder="Password" type="password" required name="password">
						</div>
						<div class="actions">
							<input class="btn btn-info pull-right" type="submit" value="Login"> <span class="checkbox-wrapper"> 
							<a href="index.html" class="pull-left">Forgot Password</a>
							</span>
							<div class="clearfix"></div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>