
<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>
  <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Approve Leave</title>
 <!--<link rel="stylesheet" href="alt.css" type="text/css" >-->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style type="text/css">
body{
font-family:Aerial;

}</style>
</head>
<body>
 <div class="container-fluid">
<nav class="navbar navbar-inverse" >
			<div class="container-fluid"  >
			<div class="navbar-header">
                        <a class="navbar-brand"  href="#">Leave Management System.</a>
                    </div>
                    <ul class="nav navbar-nav">
                         <li><a href="adminHome.jsp">Home</a></li>
                        <li class="active"><a href="approve.jsp"> Approved Leave</a></li>
                        <li><a href="requestPageAdmin.jsp">Request</a></li>
                        <li><a href="reportAdmin.jsp">Report</a></li>
						<li><a href="history.jsp">History</a></li>
						<li><a href="deleteEmployee.jsp">Delete Employee</a></li>
						<li><a href="updateDetailsAdmin.jsp">Update Details</a></li>
                        <li><a href="resetPasswordAdmin.jsp">Reset Password</a></li>
                    </ul>
					 <ul class="nav navbar-nav pull-right">
                        <li><button method="get" action="index.html" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout"  value="Log Out"><font color="black">Log Out</font></button></li></ul>
                </div>
					</nav>   
<form:form>
<h1>
						<span class="label label-default">Leave requests to be approved.</span>
					</h1><br/>
<div class="table-responsive" style="width: 600px;">
<table id="dataTable" class="table table-striped">
<tr>
		        				<th>Email</th>
								<th>Name</th>
								<th>Department</th>
								<th>Leave Date</th>
								<th>Contact</th>
								<th>Number of leave days</th>
								
								<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><button><a href="" id="disapprove">Approve</a></button></td>
								<td><button><a href="" id="disapprove">Disapprove</a></button></td></tr>
</table></div></form:form>					


					<br/><br/><br/>
<hr/>
<footer><em><p>Copyright@ 2017, Genkey-Africa,Ghana.</p></em></footer>
             </div> 
    </body>
</html>