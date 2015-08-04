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
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
    
    
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
                
                <div class="breadcrumbs column">
                	<h2>ស្វែងរកពត៌មាន</h2>
                </div>
                
                <div class="main-content">
                    <div class="column-two-third">
                        <div class="advance-search">
                            <form id="ui_element" class="sb_wrapper">
                                <p>
                                    <span class="sb_down"></span>
                                    <input class="sb_input" type="text"/>
                                    <input class="sb_search" type="submit" value=""/>
                                </p>
                                <ul class="sb_dropdown" style="display:none;">
                                    <li class="sb_filter">Filter your search</li>
                                    <li><input type="checkbox"/><label for="all"><strong>គ្រប់ប្រភេទ</strong></label></li>
                                    <li><input type="checkbox"/><label for="Automotive">កម្សាន្ត</label></li>
                                    <li><input type="checkbox"/><label for="Baby">ការងារ</label></li>
                                    <li><input type="checkbox"/><label for="Beauty">សុខភាព</label></li>
                                    <li><input type="checkbox"/><label for="Books">នយោបាយ</label></li>
                                    <li><input type="checkbox"/><label for="Cell">កីទ្បា</label></li>
                                </ul>
                            </form>    
                        </div>
                    </div>
                    
                    <!--list news-->
                    <div class="wrap-news">
                        <div class="news-row column-two-third">
                            <div class="items">
                               <img src="img/fer.jpg" />
                                <a href="single.jsp"><h5>What is Lorem Ipsum?</h5></a>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,pe specimen book. It but also the leap into electronic typesetting, releas...</p>
                            </div>  
                        </div>
                        <div class="news-row column-two-third">
                            <div class="items">
                               <img src="img/fer.jpg" />
                                <a href="single.jsp"><h5>Lorem Ipsum</h5></a>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,pe specimen book. It but also the leap into electronic typesetting, releas...</p>
                            </div>  
                        </div>
                        <div class="news-row column-two-third">
                            <div class="items">
                               <img src="img/fer.jpg" />
                                <a href="single.jsp"><h5>Lorem Ipsum</h5></a>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,pe specimen book. It but also the leap into electronic typesetting, releas...</p>
                            </div>  
                        </div>
                        <div class="news-row column-two-third">
                            <div class="items">
                               <img src="img/fer.jpg" />
                                <a href="single.jsp"><h5>Lorem Ipsum</h5></a>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,pe specimen book. It but also the leap into electronic typesetting, releas...</p>
                            </div>  
                        </div>
                    </div>
                    
                    <div class="pager" style="float:right">
                        <ul >
                            <li><a href="#" class="first-page"></a></li>
                            <li><a class="pagelist" href="#">1</a></li>
                            <li><a class="pagelist" href="#">2</a></li>
                            <li><a class="pagelist active" href="#">3</a></li>
                            <li><a class="pagelist" href="#">4</a></li>
                            <li><a class="pagelist" href="#">5</a></li>
                            <li><a href="#" class="last-page"></a></li>
                        </ul>
                    </div>
                    <!--/list news-->
                </div>
                <!-- /Main Content -->
                
                <!-- Left Sidebar -->
                <div class="column-one-third">
                    <div class="sidebar">
                    	<!-- List News by category -->
                        <div class="column-one-third">
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
                        <!-- /List news by category -->
                    </div>
                    
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
