 
 <%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>
 <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adminstrator's Home Page</title>
 <link rel="stylesheet" href="alt.css" type="text/css" >
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
body{background-color:black;
font-family:Aerial;

}</style>
   </head>
    <body >
	

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="container-fluid">
            


<nav class="navbar navbar-inverse" >
			<div class="container-fluid">
			<div class="navbar-header">
                        <a class="navbar-brand"  href="#">Leave Management System.</a>
                    </div>
                    <ul class="nav navbar-nav">
                         <li class="active"><a href="AdminHome.jsp">Home</a></li>
                        <li><a href="approve.jsp"> Approved Leave</a></li>
                        <li><a href="requestPageAdmin.jsp">Request</a></li>
                        <li><a href="reportAdmin.jsp">Report</a></li>
						<li><a href="history.jsp">History</a></li>
						<li><a href="deleteEmployee.jsp">Delete Employee</a></li>
						<li><a href="updateDetailsAdmin.jsp">Update Details</a></li>
                        <li><a href="resetPasswordAdmin.jsp">Reset Password</a></li>
                    </ul>
					 <ul class="nav navbar-nav pull-right">
                        <li><a href="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout" value="Log Out"><font color="black">Log Out</font></a></li></ul>
                </div>
					</nav>               
</div>
          <div class="inner cover" >
            <h1 class="cover-heading"><center><font face="Aerial" color="white" size="10">Welcome to Genkey Leave Management System.</font></center></h1>
           
<br/><br/>		   <center><p class="lead" ><img src="GENKEY-logo.jpg"height="250" width="300" alt="Genkey Staff Image."></p></center>
            <p class="lead">
             <center> <a href="requestPageAdmin.jsp" class="btn btn-lg btn-default">Apply For  Leave</a>
			 <a href="approve.jsp" class="btn btn-lg btn-default">Approved Leave</a></center></center>
            </p>
          </div>

          <div class="mastfoot">
            <div class="inner">

					<br/><br/><br/>
<hr/>
<footer><em><p>Copyright@ 2017, Genkey-Africa,Ghana.</p></em></footer>
</div>
          </div>
		  </div>
        </div>
		</div>
    </body>
</html>