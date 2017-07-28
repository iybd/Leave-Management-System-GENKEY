<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
         <!--<link rel="stylesheet" href="alt.css" type="text/css" >-->
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
            
              
                <nav class="navbar navbar-inverse">
				 <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Leave Management System.</a>
                    </div>
					<ul class="nav navbar-nav">
                  <li class="active"><a href="home.jsp">Home</a></li>
                        
                        <li ><a href="requestPageEm.jsp">Request</a></li>
                        <li><a href="reportEm.jsp">Report</a></li>
                        <li><a href="updateDetailsEm.jsp">Update Details</a></li>
                        <li><a href="resetPasswordEm.jsp">Reset Password</a></li>
                </ul>
                   <ul class="nav navbar-nav pull-right">
                       <li><a href="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout" value="Log Out"><font color="black">Log Out</font></a></li>
					   <!--<li><button  method="get" action="Login.jsp"href="Login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout"  value="Log Out">Log Out</button></li> --></ul>
              </div>
			 </nav>
           
          </div>

          <div class="inner cover" >
            <h1 class="cover-heading"><center><font face="Aerial" color="white" size="10">Welcome to Genkey Leave Management System.</font></center></h1>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <center><img src="images/GENKEY-logo.jpg"height="350" width="400" alt="Genkey Staff Image."></center>
    </div>
  <div class="item">
     <center> <img src="images/genkey6.jpg" height="350" width="400" alt="employees"></center>
    </div>
	<div class="item">
      <center><img src="images/index.jpg" height="350" width="400" alt="vacation"></center>
    </div>
  </div>
    

   

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<p class="lead">
             <center> <a href="RequestPageEm.jsp" class="btn btn-lg btn-default">Apply For  Leave</a></center>
            </p>
          </div>

          <div class="mastfoot">
            <div class="inner">
                <br/><br/><br/>
                <hr/>
                <footer>
                  <em>  <p>Copyright@ 2017, Genkey-Africa,Ghana.</p></em></footer>
            </div>
          </div>

        </div>

      </div>

    </div>
	</body>
</html>