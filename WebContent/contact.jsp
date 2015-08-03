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
<meta name="author" content="MyPassion">

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>News - Responsive HTML5 and CSS3 template</title>

<link rel="shortcut icon" href="img/sms-4.ico" />

<!-- STYLES -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="css/fontello/fontello.css" />
<link rel="stylesheet" type="text/css" href="css/flexslider.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/ui.css" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
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
            	
                <div class="breadcrumbs column">
                	<p><a href="#">Home.</a>   \\   <a href="#">World News.</a>   \\   Single.</p>
                </div>
            
            	<!-- Main Content -->
                <div class="main-content">
                    
                    <!-- Single -->
                    <div class="column-two-third single">
                    	<div id="map"></div>
                        <div class="outerwide">
                        	<h5 class="line"><span>Location.</span></h5>
                            <p>Mauris dapibus quam id turpis dignissim rutrum. Phasellus placerat nunc in nulla pretium pellentesque. Aliquam erat volutpat. In nec enim dui, in hendrerit enim. Vestibulum ante ipsum primis in faucibus adipcising elit. Lorem ipsum Dolor sit amet adipcising elit mauris dapibus dignisim. </p>
                            
                            <div class="contact-info">
                            	<p class="man"><i class="icon-location"></i>Creative Laboratory <br />77 New York Avenue, New York city, <br />USA 10000.</p>
                                <p class="phone"><i class="icon-phone"></i> Phone:  73 443 11 23. <br />Fax:  73 443 11 23.</p>
                                <p class="envelop"><i class="icon-mail"></i>Email: <a href="#">mail@page.com</a> <br /> Web: <a href="#">www.page.com</a></p> 
                            </div>
                        </div>
                        <div class="contact-form">
                        <form action="" method="post" id="contactForm" name="contactForm">
                            <div class="form">
                                <label>Name*</label>
                                <div class="input">
                                    <span class="name"></span>
                                    <input type="text" class="name"  name="yourname" id="yourname" />
                                </div>
                            </div>
                            <div class="form">
                                <label>Email*</label>
                                <div class="input">
                                    <span class="email"></span>
                                    <input type="text" class="name"  name="email" id="email" />
                                </div>
                            </div>
                            <div class="form">
                                <label>Subject*</label>
                                <div class="input">
                                    <span class="website"></span>
                                    <input type="text" class="name" name="tele" id="tele"/>
                                </div>
                            </div>
                            <div class="form">
                                <label>Message*</label>
                                <textarea name="message" rows="10" cols="20"></textarea>
                            </div>
                            <div class="form2">
                                <!--<input type="submit" class="send-message" value="Send Message" />-->
                                <a href="javascript:submitForm();" class="send">Send Message</a>
                            </div>
                            
                        </form>
                        
                        <div class="alertMessage"></div>
                    </div>
                    </div>
                    <!-- /Single -->
                    
                </div>
                <!-- /Main Content -->
                
                <!-- Left Sidebar -->
                <div class="column-one-third">
                	<div class="sidebar">
                    	<h5 class="line"><span>Stay Connected.</span></h5>
                        <ul class="social">
                        	<li>
                            	<a href="#" class="facebook"><i class="icon-facebook"></i></a>
                                <span>6,800 <br/> <i>fans</i></span>
                            </li>
                            <li>
                            	<a href="#" class="twitter"><i class="icon-twitter"></i></a>
                                <span>12,475 <br/> <i>followers</i></span>
                            </li>
                            <li>
                            	<a href="#" class="rss"><i class="icon-rss"></i></a>
                                <span><i>Subscribe via rss</i></span>
                            </li>
                        </ul>
                    </div>
                    
                    <div class="sidebar">
                    	<h5 class="line"><span>Vimeo Video.</span></h5>
                        <iframe src="http://player.vimeo.com/video/65110834?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="300px" height="170px" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
                    </div>
                    
                    <div class="sidebar">
                    	<h5 class="line"><span>Ads Spot.</span></h5>
                        <ul class="ads125">
                        	<li><a href="#"><img src="img/banner/3.png" alt="MyPassion" /></a></li>
                            <li><a href="#"><img src="img/banner/1.png" alt="MyPassion" /></a></li>
                            <li><a href="#"><img src="img/banner/2.png" alt="MyPassion" /></a></li>
                            <li><a href="#"><img src="img/banner/4.png" alt="MyPassion" /></a></li>
                        </ul>
                    </div>
                    
                    <div class="sidebar">
                    	<div id="tabs">
                            <ul>
                                <li><a href="#tabs1">Recent.</a></li>
                                <li><a href="#tabs2">Popular.</a></li>
                                <li><a href="#tabs3">Comments.</a></li>
                            </ul>
                            <div id="tabs1">
                                <ul>
                                	<li>
                                    	<a href="#" class="title">Blandit Rutrum, Erat et Sagittis Adipcising Elit.</a>
                                        <span class="meta">26 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
                                        <span class="rating"><span style="width:70%;"></span></span>
                                    </li>
                                    <li>
                                    	<a href="#" class="title">Blandit Rutrum, Erat et Sagittis Adipcising Elit.</a>
                                        <span class="meta">26 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
                                        <span class="rating"><span style="width:70%;"></span></span>
                                    </li>
                                    <li>
                                    	<a href="#" class="title">Blandit Rutrum, Erat et Sagittis Adipcising Elit.</a>
                                        <span class="meta">26 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
                                        <span class="rating"><span style="width:70%;"></span></span>
                                    </li>
                                    <li>
                                    	<a href="#" class="title">Blandit Rutrum, Erat et Sagittis Adipcising Elit.</a>
                                        <span class="meta">26 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
                                        <span class="rating"><span style="width:70%;"></span></span>
                                    </li>
                                </ul>
                            </div>
                            <div id="tabs2">
                                <ul>
                                	<li>
                                    	<a href="#" class="title">Mauris eleifend est et turpis. Duis id erat.</a>
                                        <span class="meta">27 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
                                        <span class="rating"><span style="width:70%;"></span></span>
                                    </li>
                                    <li>
                                    	<a href="#" class="title">Mauris eleifend est et turpis. Duis id erat.</a>
                                        <span class="meta">27 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
                                        <span class="rating"><span style="width:70%;"></span></span>
                                    </li>
                                    <li>
                                    	<a href="#" class="title">Mauris eleifend est et turpis. Duis id erat.</a>
                                        <span class="meta">27 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
                                        <span class="rating"><span style="width:70%;"></span></span>
                                    </li>
                                    <li>
                                    	<a href="#" class="title">Mauris eleifend est et turpis. Duis id erat.</a>
                                        <span class="meta">27 May, 2013.   \\   <a href="#">World News.</a>   \\   <a href="#">No Coments.</a></span>
                                        <span class="rating"><span style="width:70%;"></span></span>
                                    </li>
                                </ul>
                            </div>
                            <div id="tabs3">
                                <ul>
                                	<li>
                                    	<a href="#" class="title"><strong>Someone:</strong> eleifend est et turpis. Duis id erat.Mauris eleifend est et turpis. Duis id erat.</a>
                                    </li>
                                    <li>
                                    	<a href="#" class="title"><strong>Someone:</strong> eleifend est et turpis. Duis id erat.Mauris eleifend est et turpis. Duis id erat.</a>
                                    </li>
                                    <li>
                                    	<a href="#" class="title"><strong>Someone:</strong> eleifend est et turpis. Duis id erat.Mauris eleifend est et turpis. Duis id erat.</a>
                                    </li>
                                    <li>
                                    	<a href="#" class="title"><strong>Someone:</strong> eleifend est et turpis. Duis id erat.Mauris eleifend est et turpis. Duis id erat.</a>
                                    </li>
                                    <li>
                                    	<a href="#" class="title"><strong>Someone:</strong> eleifend est et turpis. Duis id erat.Mauris eleifend est et turpis. Duis id erat.</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
                <!-- /Left Sidebar -->
                
            </div>    
        </section>
        <!-- / Content -->
        
		<!--footer  -->
    	 <jsp:include page="includes/footer.jsp"></jsp:include>
    	<!--/footer  -->
    </div>
	</div>
</div>
<!-- / Body Wrapper -->


<!-- SCRIPTS -->
<script type="text/javascript" src="js/jquery.js"></script>
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
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="js/mypassion.js"></script>

</body>
</html>
