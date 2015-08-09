<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div id="menubar" class="menubar-inverse ">
				<div class="menubar-fixed-panel">
					<div>
						<a class="btn btn-icon-toggle btn-default menubar-toggle" data-toggle="menubar" href="javascript:void(0);">
							<i class="fa fa-bars"></i>
						</a>
					</div>
					<div class="expanded">
						<a href="blank.jsp">
							<span class="text-lg text-bold text-primary ">NEWS&nbsp;ADMIN</span>
						</a>
					</div>
				</div>
				<div class="menubar-scroll-panel">

					<!-- BEGIN MAIN MENU -->
					<ul id="main-menu" class="gui-controls">

						<!-- BEGIN DASHBOARD -->
						<li>
							<a href="blank.jsp" >
								<div class="gui-icon"><i class="md md-home"></i></div>
								<span class="title">Dashboard</span>
							</a>
						</li><!--end /menu-li -->
						<!-- END DASHBOARD -->

						<!-- BEGIN NEWS -->
						<li class="gui-folder">
							<a>
								<div class="gui-icon"><i class="md md-email"></i></div>
								<span class="title">News</span>
							</a>
							<!--start submenu -->
							<ul>
								<li><a href="addnews.jsp" ><span class="title">Add News</span></a></li>
								<li><a href="listnews.jsp" ><span class="title">List News</span></a></li>
							</ul><!--end /submenu -->
						</li><!--end /menu-li -->
						<!-- END NEWS -->
						
						<!-- BEGIN CATEGORY -->
						<li class="gui-folder">
							<a>
								<div class="gui-icon"><i class="md md-email"></i></div>
								<span class="title">Category</span>
							</a>
							<!--start submenu -->
							<ul>
								<li><a href="addmodule.jsp" ><span class="title">Add Category</span></a></li>
								<li><a href="listmodule.jsp" ><span class="title">List Category</span></a></li>
							</ul><!--end /submenu -->
						</li><!--end /menu-li -->
						<!-- END CATEGORY -->
						
						<!-- BEGIN USER -->
						<li class="gui-folder">
							<a>
								<div class="gui-icon"><i class="md md-email"></i></div>
								<span class="title">User</span>
							</a>
							<!--start submenu -->
							<ul>
								<li><a href="adduser.jsp" ><span class="title">Add User</span></a></li>
								<li><a href="listuser.jsp" ><span class="title">List User</span></a></li>
							</ul><!--end /submenu -->
						</li><!--end /menu-li -->
						<!-- END USER -->
						
						<!-- BEGIN MENU -->
						<li class="gui-folder">
							<a>
								<div class="gui-icon"><i class="md md-email"></i></div>
								<span class="title">Menu</span>
							</a>
							<!--start submenu -->
							<ul>
								<li><a href="fixedmenu.jsp" ><span class="title">Fixed Menu</span></a></li>
							</ul><!--end /submenu -->
						</li><!--end /menu-li -->
						<!-- END MENU -->
						
						<!-- BEGIN RECOMENDATION -->
						<li class="gui-folder">
							<a>
								<div class="gui-icon"><i class="md md-email"></i></div>
								<span class="title">Mail</span>
								<!--start submenu -->
							</a>
							<ul>
								<li><a href="compose.jsp" ><span class="title">Compose</span></a></li>
								<li><a href="recommendation.jsp" ><span class="title">Recommendation</span></a></li>
							</ul><!--end /submenu -->
						</li><!--end /menu-li -->
						<!-- END RECOMENDATION -->
						
					</ul><!--end .main-menu -->
					<!-- END MAIN MENU -->

					<div class="menubar-foot-panel">
						<small class="no-linebreak hidden-folded">
							<span class="opacity-75">Copyright &copy; 2014</span> <strong>CodeCovers</strong>
						</small>
					</div>
				</div><!--end .menubar-scroll-panel-->
			</div><!--end #menubar-->