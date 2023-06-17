<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Account Page</title>
    <style>
table {
  margin-top: 10px; 
  font-family: arial, sans-serif;
  font-size:20px;
  font-color:Red;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 3px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
    
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
	<body style="background-image: url('images/loggedin-bg.jpg');">
	  <div id="st-container" class="st-container">
	    <div class="st-pusher">
	      <div class="st-content">
	        <div class="st-content-inner">
			    <header>
					<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
						<div class="container">
							<div class="navbar-header">
				                <button type="button" class="navbar-toggle collapsed" >
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
									<li class="active" style="color:black"><a href="AccountPage.jsp">Home</a></li>

									

									<li class="dropdown"><a href="#" ><%="Welcome "+session.getAttribute("fName") %><b class="caret"></b></a>
										<!-- submenu-wrapper -->
										<div class="submenu-wrapper submenu-wrapper-topbottom">
											<div class="submenu-inner  submenu-inner-topbottom">
												<ul class="dropdown-menu">
													<li><a href="AccountPage.jsp">Profile</a></li>
													<li><a href="SignOut">Logout</a></li>
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

        <% if((String)session.getAttribute("fName")!=null)
         {%>


           <div style="margin-top: 100px; margin-bottom: 50px;margin-left:80px;background-color:white;opacity:0.6;border-radius:25px;padding:30px;width:70%;"> 
           	
              
              <%
				try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/bank","root","arpit945@@");
        PreparedStatement st= con.prepareStatement("select * from loan where Account_Number=?");
        st.setLong(1,(long)session.getAttribute("Anumber"));
        ResultSet rs=st.executeQuery();

        if(rs.next())
        {
         %>
				 
			<%if(rs.getInt("Status")==1){ %>	 
           <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" ><b> ACCOUNT NUMBER : </b> <%=rs.getString("Account_Number") %><br></p>
               <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px"><b> IFSC CODE: </b>KCC1234<br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>FIRST NAME :</b> <%=rs.getString("First_Name") %><br></p>
               
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>LAST NAME :</b> <%=rs.getString("Last_Name") %><br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>AMOUNT:</b> <%=rs.getString("Amount") %><br></p>
               <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>EMAIL :</b> <%=rs.getString("Email") %><br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>TIME PERIOD :</b> <%=rs.getString("Duration")+"year" %><br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>START DATE :</b> <%=rs.getString("sdate") %><br></p>
                <p style="color: red; font-size: 25px; font-style: solid;margin-left:30px" > <b><u><i>WITNESS DETAILS</i></u></b><br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>1: NAME</b> <%=rs.getString("Nominee1Name") %><br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>ACCOUNT NUMBER:</b> <%=rs.getString("Nominee1ANumber") %><br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>ADDRESS:</b> <%=rs.getString("Nominee1Address") %><br></p>
              <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>2: NAME</b> <%=rs.getString("Nominee2Name") %><br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>ACCOUNT NUMBER:</b> <%=rs.getString("Nominee2ANumber") %><br></p>
                <p style="color: black; font-size: 25px; font-style: solid;margin-left:30px" > <b>ADDRESS:</b> <%=rs.getString("Nominee2Address") %><br></p>
              
              
              <br>
              <br>
              <%}
              else if(rs.getInt("Status")==0)
              { 
            	  session.setAttribute("temp", "no"); 
              %>
              <p style="color: Red; font-size: 30px; font-style: solid;"> STATUS: <h3 style="color:red">Loan in Process<br>
              Please Wait Until Your Documents are being Verified.</h3><br></p>
             
               <%}else if(rs.getInt("Status")==2){
            	   session.setAttribute("temp", "no"); 
            	   %>
            	   <p style="color: Red; font-size: 30px; font-style: solid;"> STATUS: Sorry Your loan is REJECTED!!!</p><br></p>
            	   <%
            	   } 

        }
        else{%>
 	   
 	   <p style="color: Red; font-size: 30px; font-style: solid;"> STATUS: No Record Found!!!</p><br></p>
 		   <button style="border-radius:25px;font-size:20px; font-style: solid; color: Red; background-color: white" onclick="location.href='LoanRegister.jsp'"><b>Apply Loan</b></button>
            
 	  <% }
        }catch(Exception e){
    out.print(e.getMessage());
}
              }else{
	
	session.setAttribute("msg", "Please Login First!!!");
	response.sendRedirect("login.jsp");
}%>
      

  
            
              
              
              
               
  
            </div>

           
            	
            <div class="collapse navbar-collapse navbar-collapse" style="margin-left: 500px;">
								<ul class="nav navbar-nav navbar">
									<li class="active" style="color:black"><a href="ViewLoan.jsp">Loan</a></li>

									<li class="active"><a href="FixDeposit.jsp">Fix Deposit</a>
										
									</li>

									<li class="active"><a href="Passbook.jsp" >Passbook</a>
										
										
									</li>


									<li class="active"><a href="Transfer.jsp" >Transfer</a>
										
									</li>	
								</ul>
							
							</div><!-- /.navbar-collapse -->
						</div><!-- /.container -->
					

					
								

					<section class="footer-widget-wrapper" style="margin-top:0px">	
				
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="footer-widget">
									<p></p>

									<h3 class="wow fadeInDown">Subscribe to newsletter</h3>

									<form class="wow fadeInDown">
									  <div class="form-group">
									    <label class="sr-only" for="exampleInputEmail1">Email address</label>
									    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
									  </div>
									  <button type="submit" class="btn btn-primary">Subscribe</button>
									</form>

									<div class="social-link wow fadeInDown">
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
									<h3 class="wow fadeInDown">Customer Care</h3>
									<ul class="wow fadeInDown">
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
									<h3 class="wow fadeInDown">Information</h3>
									<ul class="wow fadeInDown">
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
									<h3 class="wow fadeInDown">Solutions</h3>
									<ul class="wow fadeInDown">
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


		<!-- ======== OFFCANVAS MENU ========= -->
	    <div class="offcanvas-menu offcanvas-effect visible-xs">
	      <button type="button" class="close" aria-hidden="true" data-toggle="offcanvas" id="off-canvas-close-btn">&times;</button>
	      <h3>Sidebar Menu</h3>
	      	<div>
		      <div>
				<ul>
					<li><a href="#">Home</a>
						<ul>
							<li class="active"><a href="index.html"><i class="fa fa-home"></i> Home Style One</a></li>
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
							<li><a href="contact.html"><i class="fa fa-envelope-o"></i> Contact</a></li>
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
    