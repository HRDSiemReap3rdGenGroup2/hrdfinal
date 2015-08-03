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
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
<link rel="stylesheet" type="text/css" href="css/table.css" />    
<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/devices/1000.css" media="only screen and (min-width: 768px) and (max-width: 1000px)" />
<link rel="stylesheet" type="text/css" href="css/devices/767.css" media="only screen and (min-width: 480px) and (max-width: 767px)" />
<link rel="stylesheet" type="text/css" href="css/devices/479.css" media="only screen and (min-width: 200px) and (max-width: 479px)" />
<link href='http://fonts.googleapis.com/css?family=Merriweather+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

<!--[if lt IE 9]> <script type="text/javascript" src="js/customM.js"></script> <![endif]-->

<style>
    .user-profile{
        background-color: #4F9D51;
        padding:8px;
        color: white;
    }
    .user-info li:hover{
        background-color: darkseagreen;
    }
    .wrap-news{
        margin-top: 20px;
    }
    .wrap-news p{
        margin-bottom: 6px;
    }
</style>
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
            <div class="container" style="margin-top:22px">
                
                <!--left sidebar-->
                <div class="column-one-fourth">
                    <div class="sidebar">
                        
                        <h5 class="user-profile"><span>ប្រភេទការងារ</span></h5>
                        <div>
                            <ul class="all-category">
                                <li><a href="#">វិទ្យាសាស្រ្តកុុំព្យទ័រ</a></li>
                                <li><a href="#">បច្ចេកវិទ្យា</a></li>
                                <li><a href="#">កីទ្បា</a></li> 
                                <li><a href="#">នយោបាយ</a></li>
                                <li><a href="#">វិទ្យាសាស្ត្រ</a></li> 
                                <li><a href="#">សង្គម</a></li>
                                <li><a href="#">សហគ្រិនភាព</a></li> 
                                <li><a href="#">ការងារ</a></li>
                            </ul>
                        </div>

                    </div>    
                </div>
                <!--/left sidebar-->
                
                <!--main-content-->
                <div class="main-content">
                    <div class="column-three-fourth" id="display-job">
                        
                        <!--category-header-->
                        <h5 class="user-profile"><span>ការងារ</span></h5>
                        <!--/category-header-->
                        
                        <input type="text" placeholder="ស្វែករងការងារនៅទីនេះ..." style="border: 1px solid #DBDBDB; width:50%;margin-top:13px"/>
                        <select style="border:1px solid #DBDBDB; margin-left:0; margin-right:0;margin-top:10px; margin-bottom:10px; width:48%; font-family: 'Khmer OS Siemreap'">
                            <option>គ្រប់ ខេត្ត/ក្រុង</option>
                            <option>ភ្នំពេញ</option>
                            <option>កណ្តាល</option>
                            <option>កោះកុង</option>
                            <option>សៀមរាប</option>
                            <option>ប៉ៃលិន</option>
                            <option>បាត់ដំបង</option>
                        </select>
                        <!-- job list -->
                        <table class="table">
                            <tr>
                                <th>ល.រ</th>
                                <th>ការងារ</th>
                                <th>ទីតាំង</th>
                                <th>ឈប់ទទួលពាក្យ</th>
                            </tr> 
                            <tr>
                                <td>J001</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>ភ្នំពេញ</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J002</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>ភ្នំពេញ</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J003</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>បាត់ដំបង<//td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J004</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>បាត់ដំបង<//td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J005</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>កោះកុង</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J006</td>
                                <td>Junior Web Developer</td>
                                <td>កោះកុង</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J007</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>ភ្នំពេញ</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J008</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>ភ្នំពេញ</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J009</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>បាត់ដំបង<//td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J010</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>បាត់ដំបង<//td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J011</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>កោះកុង</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J012</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>កោះកុង</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J013</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>កោះកុង</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J014</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>កោះកុង</td>
                                <td>01/08/2015</td>
                            </tr>
                            <tr>
                                <td>J015</td>
                                <td><a href="#">Junior Web Developer</a></td>
                                <td>កោះកុង</td>
                                <td>01/08/2015</td>
                            </tr>
                        </table>
                        <!--/job list-->
                        
                        <!--pager-->
                        <div class="pager" style="float:right; margin-right:0px">
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
                        <!--/pager-->
            
                    </div>
                </div>
                <!--/main content-->
                
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
