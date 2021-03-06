<%@page import="model.dao.NewsDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="KhmerAcademy News - Latest, Hotest News In Cambodao">
<meta name="author" content="KhmerAcademy">

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>All Khmer News</title>

<link rel="shortcut icon" href="img/sms-4.ico" />

<!-- STYLES -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="css/fontello/fontello.css" />
<link rel="stylesheet" type="text/css" href="css/flexslider.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/ui.css" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css" />
<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/devices/1000.css" media="only screen and (min-width: 768px) and (max-width: 1000px)" />
<link rel="stylesheet" type="text/css" href="css/devices/767.css" media="only screen and (min-width: 480px) and (max-width: 767px)" />
<link rel="stylesheet" type="text/css" href="css/devices/479.css" media="only screen and (min-width: 200px) and (max-width: 479px)" />
<link href='http://fonts.googleapis.com/css?family=Merriweather+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
<!--[if lt IE 9]> <script type="text/javascript" src="js/customM.js"></script> <![endif]-->
</head>

<body>
<c:if test="${requestScope.signup_status!=null }">
	<script type='text/javascript'>alert('Signup Error!');</script>
</c:if>
<c:if test="${requestScope.logstatus!=null }">
	<script type="text/javascript">alert("Login Fail!");</script>
</c:if>
<c:set var="list" value="${requestScope.latestnews }"></c:set>
<c:set var="user" value="${sessionScope.user }"></c:set>
<c:if test="${list==null }">
	<c:redirect url="home"></c:redirect>
</c:if>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/e	n_US/sdk.js#xfbml=1&version=v2.4";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- Body Wrapper -->
<div class="body-wrapper">
	<div class="controller">
    <div class="controller2">

        <!-- Header -->
		<jsp:include page="includes/header.jsp"></jsp:include>
        <!-- /Header -->
        
        <!-- Slider -->
        <section id="slider">
            <div class="container">
                <div class="main-slider">
                	<div class="badg">
                    	<p><a href="#">ពេញនិយម</a></p>
                    </div>
                	<div class="flexslider">
                	<c:set var="list" value="${requestScope.popularnews }"></c:set>
                        <ul class="slides">
                           <c:forEach items="${list }" var="row">
	                        	<li>
	                                <img src="${row.news_img }" alt="${row.news_img }" style="height:372px;"/>
	                                <p class="flex-caption"><a href="news?id=${row.news_id}" target="_blank">${row.news_title }</a>${row.news_desc }</p>
	                            </li>
                        	</c:forEach>
                        </ul>
                    </div>
                </div>
                <c:set var="list" value="${requestScope.latestnews }"></c:set>
                <div class="slider2">
                	<div class="badg">
                    	<p><a href="#">ថ្មីបំផុត</a></p>
                    </div>
                    <a href="news?id=${list[0].news_id}" target="_blank"><img src="${list[0].news_img }" alt="${row.news_img }" style="width:380px;height:217px;"/></a>
                    <p class="caption"><a href="news?id=${list[0].news_id}" target="_blank">${list[0].news_title }</a></p>
                </div>
                
                <div class="slider3">
                	<a href="news?id=${list[1].news_id}" target="_blank"><img src="${list[1].news_img }" alt="${row.news_img }" style="width:180px;height:135px;"/></a>
                    <p class="caption"><a href="news?id=${list[1].news_id}" target="_blank">${list[1].news_title }</a></p>
                </div>   
                
                <div class="slider3">
                	<a href="news?id=${list[2].news_id}" target="_blank"><img src="${list[2].news_img }" alt="${row.news_img }" style="width:180px;height:135px;"/></a>
                    <p class="caption"><a href="news?id=${list[2].news_id}" target="_blank">${list[2].news_title }</a></p>
                </div>
                
            </div>    
        </section>
        <!-- / Slider -->
        
        <!-- Content -->
        <section id="content">
            <div class="container">
            	<!-- Main Content -->
                <div class="main-content">
                	
                    <!-- Popular News -->
                	<div class="column-one-third">
                    	<h5 class="line"><span>ពត៌មានពេញនិយម</span>
                    		<select style="float: right;margin-top: 5px;margin-left: 10px;">
							  <option>Daily</option>
							  <option>Weekly</option>
							  <option>Monthly</option>
							</select>
                    	</h5>
                        <div class="outertight">
                        	<ul class="block">
                        	<c:set var="list" value="${requestScope.popularnews }"></c:set>
                        	<c:forEach items="${list }" var="row">
                        		<li>
                        			<a href="news?id=${row.news_id}" target="_blank"><img src="${row.news_img}" alt="${row.news_title}" class="alignleft" width="140" height="86"/></a>
                                    <p>
                                        <span title="${row.news_date }">${fn:substring(row.news_date,0,20)}</span>
                                        <a href="news?id=${row.news_id}" target="_blank">${fn:substring(row.news_title,0,60)}..</a>
	                                	<div>
	                                		<span style="color:#aaa;display:inline;">Viewed:${row.hit_count}</span>
                                	     	<c:set value="${0}" var="have"></c:set>
	                                		<c:choose>
		                                			<c:when test="${user!=null || user!=''}">
			                                				<c:forEach items="${requestScope.user_savedlist }" var="i">
		                                						<c:if test="${i.news_id==row.news_id }">
						                                			<c:set value="${1}" var="have"></c:set>
						                                			<button style="float:right;background:#ccc" id="${row.news_id}" disabled>Saved</button>
		                                						</c:if>
		                                				</c:forEach>
	                                					<c:if test="${have!=1}">
			                                				<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
			                                				<c:set value="${0}" var="have"></c:set>
	                                					</c:if>
		                                			</c:when>
		                                			<c:otherwise>
															<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
		                                			</c:otherwise>
		                                		</c:choose>
	                                	</div>	
                                    </p>
                        		</li>
                        	</c:forEach>
                            </ul>
                        </div>
                        
                    </div>
                    <!-- /Popular News -->
                    
                    <!-- Health News -->
                    <div class="column-one-third">
                    	<h5 class="line"><span><a href="tech">ព័ត៌មានបច្ចេកវិទ្យា​</a></span>
                    	<select style="float:right;margin-top:5px;margin-left: 10px;">
							  <option>Latest</option>
							  <option>Top View</option>
							</select>
                    	</h5>
                        <div class="outertight m-r-no">
                        	<ul class="block">
                        	<c:set var="list" value="${requestScope.B010105 }"></c:set>
                            <c:forEach items="${list }" var="row">
                        		<li>
                        			<a href="news?id=${row.news_id}" target="_blank"><img src="${row.news_img}" alt="${row.news_title}" class="alignleft" width="140" height="86"/></a>
                                    <p>
                                        <span title="${row.news_date }">${fn:substring(row.news_date,0,20)}</span>
                                        <a href="news?id=${row.news_id}" target="_blank">${fn:substring(row.news_title,0,70)}..</a>
	                                	<div>
	                                		<span style="color:#aaa;display:inline;">Viewed:${row.hit_count}</span>
	                                		<c:set value="${0}" var="have"></c:set>
	                                		<c:choose>
		                                			<c:when test="${user!=null || user!=''}">
			                                				<c:forEach items="${requestScope.user_savedlist }" var="i">
		                                						<c:if test="${i.news_id==row.news_id }">
						                                			<c:set value="${1}" var="have"></c:set>
						                                			<button style="float:right;background:#ccc" id="${row.news_id}" disabled>Saved</button>
		                                						</c:if>
		                                				</c:forEach>
	                                					<c:if test="${have!=1}">
			                                				<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
			                                				<c:set value="${0}" var="have"></c:set>
	                                					</c:if>
		                                			</c:when>
		                                			<c:otherwise>
															<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
		                                			</c:otherwise>
		                                		</c:choose>
	                                	</div>		
                                    </p>
                        		</li>
                        	</c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- /Health News -->  
                    
                    <!-- Life Style -->
                    <div class="column-two-third">
                    	<h5 class="line">
                        	<span><a href="politic">នយោបាយ</a></span>
                        	<select style="margin-left: 10px;">
							  <option>Latest</option>
							  <option>Top View</option>
							</select>
                            <div class="" style="position:absolute;top:0px;right:0px;">
                                <a id="next1" class="next" href="#"><span></span></a>	
                                <a id="prev1" class="prev" href="#"><span></span></a>
                            </div>
                        </h5>
                        <c:set var="list" value="${requestScope.B020103 }"></c:set>
                        <c:set var="x" value="${list[0]}" ></c:set>
                        <div class="outertight">
                        	<img src="${x.news_img }" alt="${x.news_img }" style="width:300px;height:162px;"/>
                            <h6 class="regular"><a href="news?id=${x.news_id}">${x.news_title }</a></h6>
							<span title="${x.news_date }">${x.news_date}</span>
                            <p>${x.news_desc }</p>
                        </div>
                        
                        <div class="outertight m-r-no">
                        	
                        	<ul class="block" id="carousel">
                        		<c:forEach items="${list }" var="row">
                        		<li>
                        			<a href="news?id=${row.news_id}" target="_blank"><img src="${row.news_img}" alt="${row.news_title}" class="alignleft" width="140" height="86"/></a>
                                    <p>
                                    	<span title="${row.news_date }">${fn:substring(row.news_date,0,20)}</span>
                                        <a href="news?id=${row.news_id}" target="_blank">${fn:substring(row.news_title,0,60)}..</a>
	                                	<div>
	                                		<span style="color:#aaa;display:inline;">Viewed:${row.hit_count}</span>
	                                		<c:set value="${0}" var="have"></c:set>
	                                		<c:choose>
		                                			<c:when test="${user!=null || user!=''}">
			                                				<c:forEach items="${requestScope.user_savedlist }" var="i">
		                                						<c:if test="${i.news_id==row.news_id }">
						                                			<c:set value="${1}" var="have"></c:set>
						                                			<button style="float:right;background:#ccc" id="${row.news_id}" disabled>Saved</button>
		                                						</c:if>
		                                				</c:forEach>
	                                					<c:if test="${have!=1}">
			                                				<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
			                                				<c:set value="${0}" var="have"></c:set>
	                                					</c:if>
		                                			</c:when>
		                                			<c:otherwise>
															<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
		                                			</c:otherwise>
		                                		</c:choose>
	                                	</div>		
                                    </p>
                        		</li>
                        		</c:forEach>
                            </ul>
                        </div>
                    </div>
                    
                    <!-- /Life Style -->
                    
                </div>
                <!-- /Main Content -->
                
                <!-- Left Sidebar -->
                <div class="column-one-third">
                    <!-- Hot News -->
                    <div class="column-one-third">
                    	<h5 class="line"><span><a href="entertainment">កម្សាន្ត</a>​</span>
                    		<select style="float: right;margin-top: 5px;margin-left: 10px;">
							  <option>Latest</option>
							  <option>Top View</option>
							</select>
                    	</h5>
                        <div class="outertight m-r-no">
                        	<ul class="block">
                        	<c:set var="list" value="${requestScope.B030302 }"></c:set>
                            <c:forEach items="${list }" var="row">
                        		<li>
                        			<a href="news?id=${row.news_id}" target="_blank"><img src="${row.news_img}" alt="${row.news_title}" class="alignleft" width="140" height="86"/></a>
                                    <p>
                                        <span title="${row.news_date }">${fn:substring(row.news_date,0,20)}</span>
                                        <a href="news?id=${row.news_id}" target="_blank">${fn:substring(row.news_title,0,60)}..</a>
	                                	<div style="position:relative;bottom:0px;width:100%">
	                                		<span style="color:#aaa;display:inline;">Viewed:${row.hit_count}</span>
	                                		<c:set value="${0}" var="have"></c:set>
	                                		<c:choose>
		                                			<c:when test="${user!=null || user!=''}">
			                                				<c:forEach items="${requestScope.user_savedlist }" var="i">
		                                						<c:if test="${i.news_id==row.news_id }">
						                                			<c:set value="${1}" var="have"></c:set>
						                                			<button style="float:right;background:#ccc" id="${row.news_id}" disabled>Saved</button>
		                                						</c:if>
		                                				</c:forEach>
	                                					<c:if test="${have!=1}">
			                                				<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
			                                				<c:set value="${0}" var="have"></c:set>
	                                					</c:if>
		                                			</c:when>
		                                			<c:otherwise>
															<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
		                                			</c:otherwise>
		                                		</c:choose>
	                                	</div>		
                                    </p>
                        		</li>
                        	</c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- /Hot News --> 
                    
                    <!-- Hot News -->
                    <div class="column-one-third">
                    	<h5 class="line"><span><a href="health">សុខភាព</a></span>
                    		<select style="float: right;margin-top: 5px;margin-left: 10px;">
							  <option>Latest</option>
							  <option>Top View</option>
							</select>
                    	</h5>
                        <div class="outertight m-r-no">
                        	<ul class="block">
                                <c:set var="list" value="${requestScope.B020503 }"></c:set>
	                            <c:forEach items="${list }" var="row">
	                        		<li>
	                        			<a href="news?id=${row.news_id}" target="_blank"><img src="${row.news_img}" alt="${row.news_title}" class="alignleft" width="140" height="86"/></a>
	                                    <p>
	                                        <span title="${row.news_date }">${fn:substring(row.news_date,0,20)}</span>
	                                        <a href="news?id=${row.news_id}" target="_blank">${fn:substring(row.news_title,0,60)}..</a>
		                                	<div>
		                                		<span style="color:#aaa;display:inline;">Viewed:${row.hit_count}</span>
	                                		<c:set value="${0}" var="have"></c:set>
	                                		<c:choose>
		                                			<c:when test="${user!=null || user!=''}">
			                                				<c:forEach items="${requestScope.user_savedlist }" var="i">
		                                						<c:if test="${i.news_id==row.news_id }">
						                                			<c:set value="${1}" var="have"></c:set>
						                                			<button style="float:right;background:#ccc" id="${row.news_id}" disabled>Saved</button>
		                                						</c:if>
		                                				</c:forEach>
	                                					<c:if test="${have!=1}">
			                                				<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
			                                				<c:set value="${0}" var="have"></c:set>
	                                					</c:if>
		                                			</c:when>
		                                			<c:otherwise>
															<button style="float:right" onclick="save(${row.news_id})" id="${row.news_id}">Save</button>
		                                			</c:otherwise>
		                                		</c:choose>
		                                	</div>		
	                                    </p>
	                        		</li>
	                        	</c:forEach>
                            </ul>
                        </div>
                        
                    </div>
                    <!-- /Hot News -->  
                    <div class="sidebar">
                    	<h5 class="line"><span>Facebook.</span></h5>
                        <div class="fb-page" data-href="https://www.facebook.com/KhmerAcademy.Org" data-width="300" data-height="298" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/KhmerAcademy.Org"><a href="https://www.facebook.com/KhmerAcademy.Org">Khmer Academy</a></blockquote></div></div>
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
<script type="text/javascript" src="js/myscript.js"></script>

<!--[if lt IE 9]> <script type="text/javascript" src="js/html5.js"></script> <![endif]-->
<script type="text/javascript" src="js/mypassion.js"></script>
<script>
	$("#index").addClass("current");
	function save(news_id){
		if('${sessionScope.user_id}'==''){
			alert("Login first");
		}else{
			$.post("savenews",{
				news_id:news_id
			},function(data){
				if(data=='success'){
					$("#"+news_id).css("background","#ccc");
					$("#"+news_id).text("Saved");
					alert("News already saved to your save list!");
				}
			});	
		}
	}
</script>
</body>
</html>
