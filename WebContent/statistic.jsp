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

<title>TOP NEWS | AKNEWS</title>

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
            <div class="container" style="">
                
                
                <!--main-content-->
                
                    <div class="column" id="display-job">
                        
                        <!--category-header-->
                        <h5 class="user-profile"><span>ស្ថិតិ</span></h5>
                        <!--/category-header-->
                        
                        
                        <!-- job list -->
                        <div style="margin-top:10px;">
                        	<h3 style="display:inline;margin-right:20px">Top News</h3>
                        	<select style="border:1px solid #DBDBDB;padding:3px">
                        		<option>5</option>
                        		<option>10</option>
                        		<option>15</option>
                        	</select>
                        </div><!-- /.div -->
                        <div style="position:relative;right:-15px;">
                        <select style="border:1px solid #DBDBDB; margin-left:0; margin-right:0;margin-top:10px; margin-bottom:10px; width:32%; font-family: 'Khmer OS Siemreap'">
                            <option>All Media</option>
                            <option>Sabay</option>
                            <option>Khmer-note</option>
                            <option>Yolprom</option>
                        </select>
                        <select style="border:1px solid #DBDBDB; margin-left:0; margin-right:0;margin-top:10px; margin-bottom:10px; width:32%; font-family: 'Khmer OS Siemreap'">
                            <option>All Category</option>
                            <option>Entertainment</option>
                            <option>Politic</option>
                            <option>Sport</option>
                        </select>
                        <select style="border:1px solid #DBDBDB; margin-left:0; margin-right:0;margin-top:10px; margin-bottom:10px; width:32%; font-family: 'Khmer OS Siemreap'">
                            <option>Time</option>
                            <option>Daily</option>
                            <option>Weekly</option>
                            <option>Monthly</option>
                        </select>
                        </div>
                        <table class="table">
                            <tr>
                                <th>Rank</th>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Source</th>
                                <th>Views</th>
                            </tr> 
                            <tr>
                                <td>1</td>
                                <td><a href="#">ជន​អនាថា​ចំណាយ​ពេល​អង្គុយ​ដល់​យប់​ជ្រៅ​ដើម្បី​ជួយ​រក​កូន​ស្រី​ឲ្យ​បុរស​ម្នាក់...</a></td>
                                <td>កម្សាន្ត</td>
                                <td>សប្បាយ</td>
                                <td>12321</td>
                                
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><a href="#">បន្លំ​ជា​​ខ្មោច​ដើម្បី​បន្លាច​អ្នក​បើក​ឡាន ​​លទ្ធផល​ផ្ទុយ​ការ​រំពឹង​ទុក...</a></td>
                                <td>កម្សាន្ត</td>
                                <td>សប្បាយ</td>
                                <td>12321</td>
                                
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><a href="#">​សៀវ ឡុងនី រក​ឃើញ​ម្ចាស់​បេះដូង​ជា​តារា​ល្បី​កូរ៉េ Song Seung Hun...</a></td>
                                <td>កម្សាន្ត</td>
                                <td>សប្បាយ</td>
                                <td>12321</td>
                                
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><a href="#">Barca ឈ្នះ​ Roma ៣-០ ខណៈ​ Messi ​ជល់​ក្បាល និង​ច្របាច់​ក​គេ...</a></td>
                                <td>កម្សាន្ត</td>
                                <td>សប្បាយ</td>
                                <td>12321</td>
                                
                            </tr>
                            <tr>
                                <td>5</td>
                                <td><a href="#">មើល​វីដេអូ​នេះ អ្នក​នឹង​ដឹង​ថា​​រឿង​ហូលីវូដ​​មួយ​ៗ​កាត់​ត​​សាហាវ​ប៉ុណ្ណា...</a></td>
                                <td>កម្សាន្ត</td>
                                <td>សប្បាយ</td>
                                <td>12321</td>
                                
                            </tr>
                            
                            
                        </table>
                        <!--/job list-->
            
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
<script>
	$("#statistic").addClass("current");
</script>
</body>
</html>
