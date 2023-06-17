<%@page import="java.sql.*"%>
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

    <title>Admin</title>
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
	<style type="text/css">
		button :hover{
			color: aqua; 
		}
	</style>
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
				                  <span class="sr-only">Toggle navigation</span>
				                  <span class="icon-bar"></span>
				                  <span class="icon-bar"></span>
				                  <span class="icon-bar"></span>
				                </button>
							  <!-- offcanvas-trigger-effects -->
								<h1 class="logo"><a class="navbar-brand" href="Admin.html"><img src="img/logo1.png" alt=""></a></h1>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse navbar-collapse">
								<ul class="nav navbar-nav navbar-right">
									<li class="active" style="color:black"><a href="Admin.html">Home</a></li>

									<li class="dropdown"><a href="#">Welcome Admin</a>
										
									</li>
									<li><a href="SignOut">Sign Out</a></li>
								</ul>
							</div><!-- /.navbar-collapse -->
						</div><!-- /.container -->
					</nav>
				</header>
				
				<%
				try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/bank","root","arpit945@@");
        PreparedStatement st= con.prepareStatement("select * from loan where Account_Number=?");
        st.setString(1,request.getParameter("Account_Number"));
        ResultSet rs=st.executeQuery();

        while(rs.next())
        {
         %>
				
				 <div style="margin: 150px; margin-left:250px;padding:50px;border-radius:30px;background-color:black;width:60%;">
				 
           <p style="color: white; font-size: 20px; font-style: solid;" > ACCOUNT NUMBER : <%=rs.getString("Account_Number") %><br></p>
               <p style="color: white; font-size: 20px; font-style: solid;"> IFSC CODE: KCC1234<br></p>
                <p style="color: white; font-size: 20px; font-style: solid;" > FIRST NAME : <%=rs.getString("First_Name") %><br></p>
               
                <p style="color: white; font-size: 20px; font-style: solid;" > LAST NAME : <%=rs.getString("Last_Name") %><br></p>
              <p style="color: white; font-size: 20px; font-style: solid;"> EMAIL: <%=rs.getString("Email") %> <br></p>
              
              
              <p style="color: white; font-size: 20px; font-style: solid;"> ADHAAR NUMBER: <%=rs.getString("DNumber") %> <br></p>
             
              <%if(rs.getInt("Status")==1){ %>
              <p style="color: white; font-size: 20px; font-style: solid;"> STATUS: <h style="color:red">Registered</h><br></p><%}
              else if(rs.getInt("Status")==0)
              {
              %>
              <p style="color: white; font-size: 20px; font-style: solid;"> STATUS: <h3 style="color:red">UnRegistered</h3><br></p>
              <button  style="font-size:20px; font-style:oblique;  color: black; " onclick="location.href='http://localhost:8585/Online_Banking_System/PLoan.jsp?Status=1&Account=<%=rs.getString("Account_Number") %>'"><b>Accept</b></button>
              <button  style="font-size:20px; font-style:oblique;  color: black; " onclick="location.href='http://localhost:8585/Online_Banking_System/PLoan.jsp?Status=2&Account=<%=rs.getString("Account_Number") %>'"><b>Reject</b></button>
               <%}else{
            	   %>
            	   <p style="color: white; font-size: 20px; font-style: solid;"> STATUS: <p style="color:red">Declined</p><br></p>
            	   <%} %>
<%}
        }catch(Exception e){
    out.print(e.getMessage());
} %>
  
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