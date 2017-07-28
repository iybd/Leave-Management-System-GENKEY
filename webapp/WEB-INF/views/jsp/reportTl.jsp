<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Leave Report</title>
 <!--<link rel="stylesheet" href="alt.css" type="text/css" >-->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container-fluid">
<nav class="navbar navbar-inverse">
			<div class="container-fluid">
			<div class="navbar-header">
                        <a class="navbar-brand"  href="#">Leave Management System.</a>
                    </div>
                    <ul class="nav navbar-nav">
                         <li><a href="teamLeaderHome.jsp">Home</a></li>
                        <li><a href="leaveApprove.jsp"> Approve Leave</a></li>
                        <li><a href="requestPageTl.jsp">Request</a></li>
                        <li class="active"><a href="reportTl.jsp">Report</a></li>
						<li><a href="updateDetailsTeamlead.jsp">Update Details</a></li>
                        <li><a href="resetPasswordTl.jsp">Reset Password</a></li>
                    </ul>
					 <ul class="nav navbar-nav pull-right">
                        <li><a href="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout" ="black" value="Log Out"><font color="black">Log Out</font></a></li></ul>
                </div>
					</nav>             


					   <br/><br/><br/>
<hr/>
<footer><p><em>Copyright@ 2017, Genkey-Africa,Ghana.</em></p></footer>
            
        </div>
    </body>
</html>