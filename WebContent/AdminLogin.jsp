<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Login</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Web Fonts -->
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
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">

    <script src="js/vendor/modernizr-2.8.1.min.js"></script>
    <!-- HTML5 Shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	    <script src="js/vendor/html5shim.js"></script>
	    <script src="js/vendor/respond.min.js"></script>
    <![endif]-->

	</head>
	<body style="background-image: url('images/b1.jpg');">
	  <div id="st-container" class="st-container">
	    <div class="st-pusher">
	      <div class="st-content">
	        <div class="st-content-inner">
			    <header>
					<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
						<div class="container">
							<div class="navbar-header">
				                <button type="button" class="navbar-toggle collapsed">
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
									<li class="active" style="color:black"><a href="index.html">Home</a></li>


									<li class="dropdown"><a href="#" >Login/Register<b class="caret"></b></a>
										<!-- submenu-wrapper -->
										<div class="submenu-wrapper submenu-wrapper-topbottom">
											<div class="submenu-inner  submenu-inner-topbottom">
												<ul class="dropdown-menu">
													<li><a href="login.jsp">Login</a></li>
													<li><a href="register.jsp">Register</a></li>
												</ul>
											</div><!-- /.submenu-inner -->
										</div> <!-- /.submenu-wrapper -->
									</li>


									<li class="dropdown"><a href="faq.html" >FAQ </a>
										<!-- submenu-wrapper -->
										
									</li>
									<li><a href="contact.jsp">Contact Us</a></li>
								</ul>
							</div><!-- /.navbar-collapse -->
						</div><!-- /.container -->
					</nav>
				</header>
 
         <div style=" margin:150px;margin-left: 250px;background-color:white;opacity:0.8;padding:50px;border-radius:30px;width:70%">
 <center>       		
 	<form action= "Admin" method="get">
      <%
					String s=(String)session.getAttribute("msg");
					if(s!=null)
					{
						%>
						<h2 style="color:red"><%=s %></h2>
						<% 
						s=null;
					}
					session.invalidate();
					
					%>
     <b style="font-size:30px;color:Red">&nbsp &nbsp &nbsp Email &nbsp &nbsp &nbsp</b><input type="email" placeholder="Email" name="email" style="width: 250px;height:50px;margin-top: 700px margin-bottom: 10px"required/><br><br><br>
      <b style="font-size:30px;color:Red">Password &nbsp &nbsp </b><input type="password" name="Password" placeholder="******" style="width: 250px;height:50px;margin-bottom: 10px"required/><br>
 	<button  type ="submit" style="border-radius: 10px; width: 100px; height:50px;border-style: solid; margin-left: 150px;margin-top: 30PX;color:black;font-size:20px" >Submit</button>
    </form>
</center>

 
</div>
<footer class="footer-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="copyright wow fadeInDown">
									<p></p>
								</div><!-- /.copyright -->
							</div><!-- /.col-md-12 -->
						</div><!-- /.row -->
					</div><!-- /.container -->
				</footer>
	        </div> <!-- .st-content-inner -->
	       </div> <!-- .st-content -->
	    </div> <!-- .st-pusher -->
	    
		<!-- Preloader -->
		<div id="preloader">
			<div id="status">
				<div class="status-mes"></div>
			</div>
		</div>



	    <!-- jQuery -->
	    <script src="js/jquery.js"></script>
	    <!-- Bootstrap Core JavaScript -->
	    <script src="js/bootstrap.min.js"></script>
	    <!-- wow.min.js -->
	    <script src="js/wow.min.js"></script>
	    <!-- owl-carousel -->
	    <script src="owl-carousel/owl.carousel.min.js"></script>
	    <!-- smoothscroll -->
	    <script src="js/smoothscroll.js"></script>
		<!-- Offcanvas Menu -->
		<script src="js/hippo-offcanvas.js"></script>
		<!-- easypiechart -->
		<script src="js/jquery.easypiechart.min.js"></script>
	    <!-- Scrolling Nav JavaScript -->
	    <script src="js/jquery.easing.min.js"></script>
		<!-- Magnific-popup -->
		<script src="js/jquery.magnific-popup.min.js"></script>
		<!-- Shuffle.min js -->
		<script src="js/jquery.shuffle.min.js"></script>
	    <!-- Custom Script -->
	    <script src="js/scripts.js"></script>
	    </body>
</html>
	    
