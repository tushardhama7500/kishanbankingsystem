<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Update Password</title>
 <link href='http://fonts.googleapis.com/css?family=Roboto:400,900,700,500,300' rel='stylesheet' type='text/css'>
    <!-- Flaticon CSS -->
    <link href="fonts/flaticon/flaticon.css" rel="stylesheet">
    <!-- font-awesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- owl.carousel CSS -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="owl-carousel/owl.theme.css" rel="stylesheet">
    <!-- Offcanvas CSS -->
    <link href="css/hippo-off-canvas.css" rel="stylesheet">
    <!-- animate CSS -->
    <link href="css/animate.css" rel="stylesheet">
	<!-- REVOLUTION BANNER CSS SETTINGS -->
	<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">

    <script src="js/vendor/modernizr-2.8.1.min.js"></script>
    
</head>
<link rel="stylesheet" type="text/css" href="forgot.css">
<body style="background-image: url(img/bgfinal.jpg); width: fill;height: fill; color: rgba(0,0,0,10);">
 <div id="st-container" class="st-container">
	    <div class="st-pusher">
	      <div class="st-content">
	        <div class="st-content-inner">
			 	<header>
					<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
						<div class="container">
							<div class="navbar-header">
				                <button type="button" class="navbar-toggle collapsed" >
				                  <span class="sr-only">Toggle navigation</span>
				                  <span class="icon-bar"></span>
				                  <span class="icon-bar"></span>
				                  <span class="icon-bar"></span>
				                </button>
							  <!-- offcanvas-trigger-effects -->
								<h1 class="logo"><a class="navbar-brand" href="index.html"><img src="img/logo1.png" alt=""></a></h1>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse navbar-collapse">
								<ul class="nav navbar-nav navbar-right">
									<li ><a href="index.html">Home</a></li>

									<li class="dropdown"><a href="about-us.html">About Us</a>
										
									</li>

									<li class="dropdown"><a href="#" >Login/Register<b class="caret"></b></a>
										<!-- submenu-wrapper -->
										<div class="submenu-wrapper submenu-wrapper-topbottom">
											<div class="submenu-inner  submenu-inner-topbottom">
												<ul class="dropdown-menu">
													<li><a href="login.jsp">Login</a></li>
													<li><a href="register.jsp">Register</a></li>
													<li><a href="AdminLogin.jsp">Admin</a></li>
												</ul>
											</div><!-- /.submenu-inner -->
										</div> <!-- /.submenu-wrapper -->
									</li>


									<li class="dropdown"><a href="faq.html" >FAQ </a>
										<!-- submenu-wrapper -->
										
									</li>
									<li class="dropdown"><a href="contact.html">Contact Us</a></li>
								</ul>
							</div><!-- /.navbar-collapse -->
						</div><!-- /.container -->
					</nav>
				</header>
<link rel="stylesheet" type="text/css" href="forgot.css">
<body style="background-image: url(img/bgfinal.jpg); width: fill;height: fill; color: rgba(0,0,0,10);">
 <!-- <img src="C:\Users\suria\Desktop\bgfinal.jpg" style="background: rgba(0,0,0,10);">-->
<div class=box style="border: 10px; color: black;">
  <center style="background: darkgrey; position: absolute; border: solid; width: 700px;height: 550px; margin-left: 300px;margin-top: 100px; border-radius: 15px">
    <img src="img/Unlock.png" style="width: 100px;height:100px; margin-top: 80px">
    <h1 style="font-size: 50px; color: black"><em>Update Password?</em></h1>
    	<%
					String s=(String)session.getAttribute("msg");
					if(s!=null)
					{
						%>
						<h2 style="color:red"><%=s %></h2>
						<% 
						s=null;
						session.invalidate();
					}
					
					
					%>
    
    <h4 style="color: black;"><em>You can Update your password here.</em></h4>
    <form action="UpdatePassword" method="get">
      <b style="font-size:20px;">NEW PASSWORD &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</b><input type="password" name="newpwd" style="width: 250px;height:25px;margin-bottom: 10px" required/><br>
      <b style="font-size:20px;">CONFIRM PASSWORD &nbsp</b><input type="password" name="cnfpwd" style="width: 250px;height:25px;margin-bottom: 10px"required/><br><br>
      <input type="submit" name="b1" value="Update" style="border-radius: 10px; width: 120px; height:50px;border-style: solid;">
    </form>
  </center>
</div>
</body>
</html>