<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>KCC Bank</title>
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


	<body>

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
									<li class="active"><a href="contact.html">Contact Us</a></li>
								</ul>
							</div><!-- /.navbar-collapse -->
						</div><!-- /.container -->
					</nav>
				</header>

				<section class="page-header-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="page-header">
								  <h1>Contact Us</h1>
								</div>
								<ol class="breadcrumb">
								  <li><a href="index.html">Home</a></li>
								  <li class="active">Contact Us</li>
								</ol>
							</div>
						</div><!-- /.row -->
					</div><!-- /.container-fluid -->
				</section>


				<div class="container">
					<div class="content-wrapper">
						<div class="contact-us-wrapper">
							<div class="row">
								<div class="col-md-4">
									<div class="mini-contact">
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
										<h2>Email us</h2>
										<p>If you're encountering an issue or problem during transaction you can always email us directly </p>

										<a href="mailto:arpitsharma79854@gmail.com">kccbank@gmail.com</a>
									</div>
								</div>
								<div class="col-md-4">
									<div class="mini-contact">
										<h2>Call us</h2>
										<p>If you're encountering an issue or problem during transaction you can always call us directly</p>

										<a href="#">Call +91-7985479740</a>
									</div>
								</div>
								<div class="col-md-4">
									<div class="mini-contact">
										<h2>Tweet us</h2>
										<p>If you're encountering an issue or problem during transaction you can always tweet us directly</p>
										<a href="https://twitter.com/themehippo">Tweet us →</a>
									</div>
								</div>
							</div><!-- /.row -->


							<div class="row">
								
								<div class="col-md-4">
									<div class="mini-contact">
										<h2>Visit us</h2>
										<address>
											2B-2C KCC Institute of Technology and Management <br>
											Greater Noida
										</address>
									</div>
								</div>
							</div><!-- /.row -->


							<div class="directions-wrapper">
							</div><!-- /.directions-wrapper -->
							<div class="contact-us-form">

								<h2>Drop us a line</h2>

								<form action="Feedback" method="get">
									<div class="row">
										<div class="col-md-6">
										  <div class="input-group">
										    <label class="sr-only" for="name">Name</label>
										    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
										    <input id="name" name="name" type="text" class="form-control"  required="" placeholder="Name">
										  </div>
										</div>
										<div class="col-md-6">
										  <div class="input-group">
										    <label class="sr-only" for="email">Email Address</label>
										    <span class="input-group-addon" id="basic-addon2"><i class="fa fa-envelope"></i></span>
										    <input id="email" name="email" type="email" class="form-control" required="" placeholder="Email">
										  </div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
										  <div class="input-group">
										    <label class="sr-only" for="name">Date</label>
										    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
										    <input id="date" name="date" type="date" class="form-control"  required="" placeholder="Date">
										  </div>
										</div>
										<div class="col-md-6">
										  <div class="input-group">
										    <label class="sr-only" for="name">Account Number</label>
										    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
										    <input id="account" name="account" type="number" class="form-control"  required="" placeholder="Account Number">
										  </div>
										</div>
									</div>

									<div class="input-group text-area">
										<label class="sr-only" for="message">Query</label>
										<span class="input-group-addon" id="basic-addon5"><i class="fa fa-file-text-o"></i></span>
										<textarea id="query" name="query" class="form-control" rows="6" required="" placeholder="Query/Feedback"></textarea>
									</div>
									<input type="hidden" name="status" value="0"/>
									<input type="hidden" name="actiondone" value="pending"/>

									<button type="submit" class="btn btn-primary btn-lg">Send</button>
								</form>
							</div>

						</div><!-- /.content-wrapper -->
					</div><!-- /.content-wrapper -->
				</div><!-- /.container -->


				<section class="footer-widget-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="footer-widget">
									<p class="subcsribe-text">Quickly utilize installed base channels before premier expertise. Conveniently extend web-enabled niche markets without 2.0 e-markets. Collaboratively incentivize .</p>

									<h3>Subscribe to newsletter</h3>

									<form>
									  <div class="form-group">
									    <label class="sr-only" for="exampleInputEmail1">Email address</label>
									    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
									  </div>
									  <button type="submit" class="btn btn-primary">Subscribe</button>
									</form>

									<div class="social-link">
										<ul>
											<li><a href="#"><i class="fa fa-rss"></i></a></li>
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
											<li><a href="#"><i class="fa fa-youtube"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
											<li><a href="#"><i class="fa fa-flickr"></i></a></li>
										</ul>
									</div>
								</div><!-- /.footer-widget -->
							</div><!-- /.col-md-6 -->
							<div class="col-md-2 col-sm-4 col-xs-4">
								<div class="footer-widget">
									<h3>Customer Care</h3>
									<ul>
										<li><a href="#">Customer Support</a></li>
										<li><a href="#">Platinum Support</a></li>
										<li><a href="#">Gold Support</a></li>
										<li><a href="#">Standard Support</a></li>
										<li><a href="#">Training</a></li>
										<li><a href="#">Online Training</a></li>
										<li><a href="#">Custom Training</a></li>
									</ul>
								</div><!-- /.footer-widget -->
							</div><!-- /.col-md-2 -->
							<div class="col-md-2 col-sm-4 col-xs-4">
								<div class="footer-widget">
									<h3>Information</h3>
									<ul>
										<li><a href="#">Press</a></li>
										<li><a href="#">Articles</a></li>
										<li><a href="#">Reviews</a></li>
										<li><a href="#">Testimonials</a></li>
										<li><a href="#">Awards</a></li>
										<li><a href="#">Video Clips</a></li>
										<li><a href="#">Blog</a></li>
									</ul>
								</div><!-- /.footer-widget -->
							</div><!-- /.col-md-2 -->
							<div class="col-md-2 col-sm-4 col-xs-4">
								<div class="footer-widget">
									<h3>Solutions</h3>
									<ul>
										<li><a href="#">Contact Center</a></li>
										<li><a href="#">Knowledge</a></li>
										<li><a href="#">Management</a></li>
										<li><a href="#">Web Self-Service</a></li>
										<li><a href="#">Performance Metrics</a></li>
									</ul>
								</div><!-- /.footer-widget -->
							</div><!-- /.col-md-2 -->
						</div><!-- /.row -->
					</div><!-- /.container -->
				</section>


				<footer class="footer-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="copyright">
									<p>Copyright &copy; 2015 primex . All Rights Reserved. Designed by <a href="http://www.uicookies.com">uicookies.com</a> </p>
								</div><!-- /.copyright -->
							</div><!-- /.col-md-12 -->
						</div><!-- /.row -->
					</div><!-- /.container -->
				</footer>
	       	</div> <!-- .st-content-inner -->
	      </div> <!-- .st-content -->
	    </div> <!-- .st-pusher -->


			<!-- ======== OFFCANVAS MENU ========= -->
	    <div class="offcanvas-menu offcanvas-effect visible-xs">
	      <button type="button" class="close" aria-hidden="true" data-toggle="offcanvas" id="off-canvas-close-btn">&times;</button>
	      <h3>Sidebar Menu</h3>
	      <div>
	        <div>
				<ul>
					<li><a href="#">Home</a>
						<ul>
							<li><a href="index.html"><i class="fa fa-home"></i> Home Style One</a></li>
						</ul>
					</li>

					<li><a href="#">About</a>
						<ul>
							<li><a href="about-us.html"><i class="fa fa-life-ring"></i> About Us</a></li>
							<li><a href="about-me.html"><i class="fa fa-user"></i> About me</a></li>
						</ul>
					</li>

					<li><a href="#">Blog</a>
						<ul>
							<li><a href="blog.html"><i class="fa fa-pencil-square-o"></i> Standard Blog</a></li>
							<li><a href="blog-single.html"><i class="fa fa-pencil"></i> Single Article</a></li>
						</ul>
					</li>

					<li><a href="#">Portfolio</a>
						<ul>
							<li><a href="portfolio-four.html"><i class="fa fa-picture-o"></i> Four Column</a></li>
							<li><a href="portfolio-three.html"><i class="fa fa-paper-plane-o"></i> Three Column</a></li>
							<li><a href="portfolio-two.html"><i class="fa fa-magic"></i> Two Column</a></li>
						</ul>
					</li>


					<li><a href="#">Pages</a>
						<ul>
							<li><a href="job-page.html"><i class="fa fa-briefcase"></i> Job Page</a></li>
							<li><a href="clients-page.html"><i class="fa fa-coffee"></i> Clients Page</a></li>
							<li><a href="faq.html"><i class="fa fa-question-circle"></i> FAQ Page</a></li>
							<li><a href="typography.html"><i class="fa fa-puzzle-piece"></i> Typography Page</a></li>
						</ul>
					</li>


					<li><a href="#">Contact</a>
						<ul>
							<li class="active"><a href="contact.html"><i class="fa fa-envelope-o"></i> Contact</a></li>
						</ul>
					</li>
				</ul>
	        </div>
	      </div>
	    </div><!-- .offcanvas-menu -->
	 </div><!-- /st-container -->



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
	<!-- jQuery REVOLUTION Slider  -->
	<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
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
