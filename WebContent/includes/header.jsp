<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<header id="header">
   <div class="container">
                
                <!--login|signup|languages-->
                <div class="column" style="margin-bottom:0">
                    <div class="login">
                        <div class="languages" style="float:right;">
                            <a href="#"><span>ខ្មែរ</span></a><span> | </span><a href="#">ENG</a>
                        </div>
	                    <div style="float:right;">
	                        <a href="login.jsp"><span>ចូល</span></a><span> | </span><a href="login.jsp"><span>ចុះឈ្មោះ</span></a><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
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
                    
                    <!-- <div class="search">    
                        <form action="" method="post">
                            <input type="text" placeholder="ស្វែងរក..." class="ft"/>
                            <input type="submit" value="" class="fs">
                        </form>
                    </div> -->
					<div class="search advance-search" style="float:right;" id="search-box">
						<form id="ui_element" class="sb_wrapper">
	                                <p>
	                                    <span class="sb_down"></span>
	                                    <input class="sb_input" type="text"/>
	                                    <input class="sb_search" type="submit" value=""/>
	                                </p>
	                                <ul class="sb_dropdown" style="display:none;">
	                                    <li class="sb_filter">Filter your search</li>
	                                    <li><input type="checkbox" id="all"/><label for="all"><strong>គ្រប់ប្រភេទ</strong></label></li>
	                                    <li><input type="checkbox" id="entertainment"/><label for="entertainment">កម្សាន្ត</label></li>
	                                    <li><input type="checkbox" id="tech"/><label for="tech">បច្ចេកវិទ្យា</label></li>
	                                    <li><input type="checkbox" id="health"/><label for="health">សុខភាព</label></li>
	                                    <li><input type="checkbox" id="politic"/><label for="politic">នយោបាយ</label></li>
	                                    <li><input type="checkbox" id="sport"/><label for="sport">កីទ្បា</label></li>
	                                </ul>
	                    </form>
                    </div>
                    <!-- Nav -->
                    <nav id="nav">
                        <ul class="sf-menu">
                            <li id="index1"><a href="home">ទំព័រដើម</a></li>
                            <li id="politic"><a href="politic">នយោបាយ</a></li>
                            <li id="tech"><a href="tech">បច្ចេកវិទ្យា</a></li>
                            <li id="entertainment"><a href="entertainment">កម្សាន្ត</a></li>
                            <li id="job"><a href="job">ការងារ</a></li>
                            <li id="sport"><a href="sport">កីទ្បា</a></li>
                            <li id="health"><a href="health">សុខភាព</a></li>
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
</header>