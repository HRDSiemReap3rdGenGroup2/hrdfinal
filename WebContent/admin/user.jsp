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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dashboard</title>
    <meta name="author" content="SRG2">
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport">
    <meta name="description" content="KA News Admin">
    <meta name="keywords" content="KA News Admin, Admin Dashboard, SRG2">
    <script src="js/html5-trunk.js"></script>
    <link href="icomoon/style.css" rel="stylesheet">
    <!--[if lte IE 7]>
    <script src="css/icomoon-font/lte-ie7.js"></script>
    <![endif]-->

    <!-- bootstrap css -->
    <link href="css/main.css" rel="stylesheet">
    <link href="css/fullcalendar.css" rel="stylesheet">
  </head>
  <body>
    <jsp:include page="includes/header.jsp"></jsp:include>
    <div class="container-fluid">
      <jsp:include page="includes/sidemenu.jsp"></jsp:include>
      <div class="dashboard-wrapper" style="height:200px">
        <div class="main-container">
          <jsp:include page="includes/hidden-desktop.jsp"></jsp:include>
			
          <div class="row-fluid">
            <div class="span12">
              <ul class="breadcrumb-beauty">
                <li>
                  <a href="index.html"><span class="fs1" aria-hidden="true" data-icon="&#xe002;"></span> Dashboard</a>
                </li>
                <li>
                  <a href="#">Dashboard</a>
                </li>
              </ul>
            </div>
          </div>

          <br>

          <div class="row-fluid">
            <div class="span6">
              <div class="plain-header">
                <h4 class="title">
                  Current Sales Status
                </h4>
              </div>
              <div class="row-fluid">
                <div class="span6">
                  <div class="widget less-bottom-margin widget-border widget-border">
                    <div class="widget-body">
                      <div class="current-stats">
                        <h4 class="text-info">3207</h4>
                        <p>Recent Orders</p>
                        <div class="type">
                          <span class="fs1 arrow text-info" aria-hidden="true" data-icon="&#xe048;"></span> 
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="span6">
                  <div class="widget less-bottom-margin widget-border">
                    <div class="widget-body">
                      <div class="current-stats">
                        <h4 class="text-success">2231</h4>
                        <p>Shipped</p>
                        <div class="type">
                          <span class="fs1 arrow text-success" aria-hidden="true" data-icon="&#xe036;"></span> 
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row-fluid">
                <div class="span6">
                  <div class="widget widget-border">
                    <div class="widget-body">
                      <div class="current-stats">
                        <h4 class="text-warning">1198</h4>
                        <p>Processing</p>
                        <div class="type">
                          <span class="fs1 arrow text-warning" aria-hidden="true" data-icon="&#xe077;"></span> 
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="span6">
                  <div class="widget widget-border">
                    <div class="widget-body">
                      <div class="current-stats">
                        <h4>3</h4>
                        <p>Cancelled</p>
                        <div class="type">
                          <span class="fs1 arrow" aria-hidden="true" data-icon="&#xe0fa;"></span> 
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="span6">
              <div class="plain-header">
                <h4 class="title">
                  Site Visits
                </h4>
              </div>
              <div class="row-fluid">
                <div class="span6">
                  <div class="widget less-bottom-margin widget-border">
                    <div class="widget-body">
                      <div class="current-stats">
                        <h4 class="text-info">11890</h4>
                        <p>Total Visits</p>
                        <div class="type">
                          <span class="fs1 arrow text-info" aria-hidden="true" data-icon="&#xe071;"></span> 
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="span6">
                  <div class="widget less-bottom-margin widget-border">
                    <div class="widget-body">
                      <div class="current-stats">
                        <h4 class="text-error">32980</h4>
                        <p>Page Views</p>
                        <div class="type">
                          <span class="fs1 arrow text-error" aria-hidden="true" data-icon="&#xe0c6;"></span> 
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row-fluid">
                <div class="span6">
                  <div class="widget widget-border">
                    <div class="widget-body">
                      <div class="current-stats">
                        <h4 class="text-warning">19280</h4>
                        <p>Total Unique Visits</p>
                        <div class="type">
                          <span class="fs1 arrow text-warning" aria-hidden="true" data-icon="&#xe070;"></span> 
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="span6">
                  <div class="widget widget-border">
                    <div class="widget-body">
                      <div class="current-stats">
                        <h4 class="text-success">16:05:45</h4>
                        <p>Total Time Spend</p>
                        <div class="type">
                          <span class="fs1 arrow text-success" aria-hidden="true" data-icon="&#xe04d;"></span> 
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div><!-- dashboard-container -->
    </div><!-- container-fluid -->
    <jsp:include page="includes/footer.jsp"></jsp:include>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-ui-1.8.23.custom.min.js"></script>
    <script>
    	$(document).ready(function(){
			$("#user").addClass("active");
			$("#user").prepend("<span class='current-arrow'></span>");
    	});
    </script>
  </body>
</html>