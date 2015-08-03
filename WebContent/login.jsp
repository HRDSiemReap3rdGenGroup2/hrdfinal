<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="News - Clean HTML5 and CSS3 responsive template">
<meta name="author" content="KhmerAcademy">

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>KhmerAcademy News</title>

<link rel="shortcut icon" href="img/sms-4.ico" />

<!-- STYLES -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="css/fontello/fontello.css" />
<link rel="stylesheet" type="text/css" href="css/flexslider.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/ui.css" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
<link rel="stylesheet" type="text/css" href="css/loginstyle.css" />
<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/devices/1000.css" media="only screen and (min-width: 768px) and (max-width: 1000px)" />
<link rel="stylesheet" type="text/css" href="css/devices/767.css" media="only screen and (min-width: 480px) and (max-width: 767px)" />
<link rel="stylesheet" type="text/css" href="css/devices/479.css" media="only screen and (min-width: 200px) and (max-width: 479px)" />
<link href='http://fonts.googleapis.com/css?family=Merriweather+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<!--[if lt IE 9]> <script type="text/javascript" src="js/customM.js"></script> <![endif]-->


</head>

<body>

<!-- Body Wrapper -->
<div class="body-wrapper">
	<div class="controller">
    <div class="controller2">

         <!-- Header -->
        <jsp:include page="includes/header.jsp"></jsp:include>
        <!-- /Header -->

        <!-- Content -->
        <section id="content">
            <div class="container">
            	<!-- Main Content -->
                <div class="main-content">
                    <div class="column-two-third">
                        <h5 class="line"><span>ចូលប្រើប្រាស់</span></h5>
                        <!--form login+sign up-->
                        <div class="form">
                              <ul class="tab-group">
                                <li class="tab active"><a href="#signup">Sign Up</a></li>
                                <li class="tab"><a href="#login">Log In</a></li>
                              </ul>

                              <div class="tab-content">
                                <div id="signup">   
                                  <h1>Sign Up for Free</h1>
                                  <form action="/" method="post">
                                      <div class="top-row">
                                        <div class="field-wrap">
                                          <label>First Name<span class="req">*</span></label>
                                          <input type="text" required autocomplete="off" />
                                        </div>

                                        <div class="field-wrap">
                                          <label>Last Name<span class="req">*</span></label>
                                          <input type="text"required autocomplete="off"/>
                                        </div>
                                      </div>

                                      <div class="field-wrap">
                                        <label>Email Address<span class="req">*</span></label>
                                        <input type="email"required autocomplete="off"/>
                                      </div>

                                      <div class="field-wrap">
                                        <label>Set A Password<span class="req">*</span></label>
                                        <input type="password"required autocomplete="off"/>
                                      </div>
                                      <button type="submit" class="button button-block"/>Sign Up</button>
                                  </form>
                                </div>

                                <div id="login">   
                                  <h1>Welcome Back!</h1>
                                  <form action="/" method="post">
                                      <div class="field-wrap">
                                          <label>Email Address<span class="req">*</span></label>
                                          <input type="email"required autocomplete="off"/>
                                      </div>

                                      <div class="field-wrap">
                                         <label>Password<span class="req">*</span></label>
                                         <input type="password"required autocomplete="off"/>
                                      </div>
                                      <p class="forgot"><a href="#">Forgot Password?</a></p>
                                      <button class="button button-block"/>Log In</button>
                                  </form>
                                </div>
                              </div>
                        </div>
                        <!--/form login+sign up--> 
                    </div>    
                </div>
                <!-- /Main Content -->
                
                <!-- Left Sidebar -->
                <div class="column-one-third">
                    <!-- Popular News -->
                    <div class="sidebar">
                        <h5 class="line"><span>ពត៌មានពេញនិយម</span></h5>
                        <div class="outertight">
                            <ul class="block">
                                <li>
                                    <a href="#"><img src="img/trash/5.png" alt="MyPassion" class="alignleft" /></a>
                                    <p>
                                        <span>26 May, 2013.</span>
                                        <a href="#">Blandit Rutrum, Erat et Sagittis.</a>
                                    </p>
                                    <span class="rating"><span style="width:80%;"></span></span>
                                </li>
                                <li>
                                    <a href="#"><img src="img/trash/6.png" alt="MyPassion" class="alignleft" /></a>
                                    <p>
                                        <span>26 May, 2013.</span>
                                        <a href="#">Blandit Rutrum, Erat et Sagittis.</a>
                                    </p>
                                    <span class="rating"><span style="width:100%;"></span></span>
                                </li>
                                <li>
                                    <a href="#"><img src="img/trash/7.png" alt="MyPassion" class="alignleft" /></a>
                                    <p>
                                        <span>26 May, 2013.</span>
                                        <a href="#">Blandit Rutrum, Erat et Sagittis.</a>
                                    </p>
                                    <span class="rating"><span style="width:70%;"></span></span>
                                </li>
                                <li>
                                    <a href="#"><img src="img/trash/8.png" alt="MyPassion" class="alignleft" /></a>
                                    <p>
                                        <span>26 May, 2013.</span>
                                        <a href="#">Blandit Rutrum, Erat et Sagittis.</a>
                                    </p>
                                    <span class="rating"><span style="width:60%;"></span></span>
                                </li>
                                <li>
                                    <a href="#"><img src="img/trash/8.png" alt="MyPassion" class="alignleft" /></a>
                                    <p>
                                        <span>26 May, 2013.</span>
                                        <a href="#">Blandit Rutrum, Erat et Sagittis.</a>
                                    </p>
                                    <span class="rating"><span style="width:60%;"></span></span>
                                </li>
                            </ul>
                        </div>
</div>
                    <!-- /Popular News -->
                </div>
                <!-- /Left Sidebar -->
        
            </div>    
        </section>
        <!-- / Content -->
        
        <!-- Footer -->
        <jsp:include page="includes/footer.jsp"></jsp:include>
        <!-- / Footer -->
    
    </div>
	</div>
</div>
<!-- / Body Wrapper -->


<!-- SCRIPTS -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/myscript.js"></script>
<script type="text/javascript" src="js/easing.min.js"></script>
<script type="text/javascript" src="js/1.8.2.min.js"></script>
<script type="text/javascript" src="js/ui.js"></script>
<script type="text/javascript" src="js/carouFredSel.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/customM.js"></script>
<script type="text/javascript" src="js/flexslider-min.js"></script>
<script type="text/javascript" src="js/tweetable.js"></script>
<script type="text/javascript" src="js/timeago.js"></script>
<script type="text/javascript" src="js/jflickrfeed.min.js"></script>
<script type="text/javascript" src="js/mobilemenu.js"></script>

<!--[if lt IE 9]> <script type="text/javascript" src="js/html5.js"></script> <![endif]-->
<script type="text/javascript" src="js/mypassion.js"></script>

</body>
</html>
