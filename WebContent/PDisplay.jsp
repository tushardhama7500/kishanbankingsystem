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

    <title>Passbook Table</title>
    
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
    <%@page import="java.sql.*"%>
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
	<body style="background-image: url('images/b1.jpg');">
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
								<h1 class="logo"><a class="navbar-brand" href="AccountPage.html"><img src="img/logo1.png" alt=""></a></h1>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse navbar-collapse">
								<ul class="nav navbar-nav navbar-right">
									<li class="active" style="color:black"><a href="AccountPage.jsp">Home</a></li>
										
									</li>
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
									<li><a href="SignOut">Sign Out</a></li>
								</ul>
							</div><!-- /.navbar-collapse -->
						</div><!-- /.container -->
					</nav>
				</header>

         


           <div style="margin-top: 100px; margin-bottom: 550px">            	
  			
  			<% try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","arpit945@@");
        PreparedStatement st=con.prepareStatement("select * from transaction where Account_Number=? and Date between ? and ? ");
        Date date=Date.valueOf(request.getParameter("from"));
        st.setString(2, request.getParameter("from"));
        Date d=Date.valueOf(request.getParameter("to"));
        st.setString(3,request.getParameter("to"));
        st.setLong(1,(long)session.getAttribute("Anumber"));
        ResultSet rs=st.executeQuery();
    %>
    <table border=1 align=center style="text-align:center;">
      <thead>
          <tr>
          	 <th style="color:white">Transaction Id</th>
             <th style="color:white">Date</th>
             <th style="color:white">Amount</th>
             <th style="color:white">Transfer To</th>
             <th style="color:white">Transfer From</th>
             <th style="color:white">Bank Name</th>
             <th style="color:white">Reciver's Name</th>
             <th style="color:white">Balance</th>
             <th style="color:white">Credit/Debit</th>
          </tr>
      </thead>
      <tbody>
        <%
        while(rs.next())
        {
         %>
            <tr>
            	<td style="color:Red"><%=rs.getString("Trans_Number") %></td>
                <td style="color:Red"><%=rs.getString("Date") %></td>
                <td style="color:Red"><%=rs.getString("Amount") %></td>
                
                <td style="color:Red"><%=rs.getString("SANumber") %></td>
                <td style="color:Red"><%=rs.getString("Account_Number") %></td>
                <td style="color:Red"><%=rs.getString("Bank_Name") %></td>
                <td style="color:Red"><%=rs.getString("SName") %></td>
                <td style="color:Red"><%=rs.getString("Balance") %></td>
                <td style="color:Red"><%=rs.getString("Credit") %></td>
            </tr>
       <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    %>
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
    
    
