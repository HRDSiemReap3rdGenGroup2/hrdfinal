<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<header id="header">
<script src="js/jquery.js"></script>
   <div class="container">
                <!--login|signup|languages-->
                <div class="column" style="margin-bottom:0">
                    <div class="login">
                        <div class="languages" style="float:right;">
                            <a href="#"><span>ខ្មែរ</span></a><span> | </span><a href="#">ENG</a>
                        </div>
	                    <div style="float:right;">
	                        <c:set var="user" value="${sessionScope.user }"></c:set>
	                        <c:choose>
	                        	<c:when test="${user==null || user=='' }">
			                        <a href="login"><span>ចូល</span></a><span> | </span><a href="login"><span>ចុះឈ្មោះ</span></a>
	                        	</c:when>
	                        	<c:otherwise>
									<a href="user.jsp"><span>${user }</span></a><span> | </span>
			                        <a href="user/signout"><span>ចេញ</span></a>
	                        	</c:otherwise>
	                        </c:choose>
	                        <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
	                    </div>
	                    <div id="google_translate_element" style="float:right;margin-right:10px;"></div>
                        <div style="clear:both"></div>
                    </div>
                </div>
                <!--/login|signup|languages-->
                <div class="column">
                    <div class="logo" style="margin-top:0">
                        <a href="home"><img style="background-color:#4f9d51;padding-left:30px; padding-right:30px" width="200" src="img/khmeracademy.png" alt="KhmerAcademy News" /></a>
                    </div>
					<div class="search advance-search" style="float:right;" id="search-box">
						<form id="ui_element" class="sb_wrapper" action="results" method="post">
	                               	<p>
	                                    <span class="sb_down"></span>
	                                    <input class="sb_input" type="text" placeholder="ស្វែងរកពត៏មាន..." name="s_query" id="s_query" autocomplete="off"/>
	                                    <input class="sb_search" type="submit" value="" id="sb_search"/>
	                                </p>
	                                <ul class="sb_dropdown" style="display:none;" id="search-list">
	                                    <li class="sb_filter">Filter your search</li>
	                                    <li><input type="checkbox" id="all"/><label for="all"><strong>គ្រប់ប្រភេទ</strong></label></li>
	                                </ul>
	                    </form>
                    </div>
                    <!-- Nav -->
                    <nav id="nav">
                        <ul class="sf-menu">
                            <li id="index"><a href="home">ទំព័រដើម</a></li>
                            <li id="politic1"><a href="politic">នយោបាយ</a></li>
                            <li id="tech1"><a href="tech">បច្ចេកវិទ្យា</a></li>
                            <li id="entertainment1"><a href="entertainment">កម្សាន្ត</a></li>
                            <li id="job"><a href="job">ការងារ</a></li>
                            <li id="sport1"><a href="sport">កីទ្បា</a></li>
                            <li id="health1"><a href="health">សុខភាព</a></li>
                            <li id="statistic"><a href="statistic">ស្ថិតិ</a></li>
                            <li id="other"><a href="more">ផ្សេងទៀត</a></li>
                        </ul>
                    </nav>
                    <!-- /Nav -->
                </div>
            </div>
            <script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, multilanguagePage: true}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script>
	$(document).ready(function(){
		$.post("getmoduletype",function(data){
			var str="";
			for(var i=0;i<data.length;i++){
				str+="<li style='overflow:hidden'><label><input type='checkbox' name='category"+(i+1)+"' value='"+data[i].module_type+"'/>"+data[i].module_type;
				str+="</label></li>";
			}
			$("#search-list").append(str);
		});
	});
</script>
</header>
