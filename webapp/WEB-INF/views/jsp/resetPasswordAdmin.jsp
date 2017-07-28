<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>

          <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Reset Password</title>
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
			<div class="container-fluid">
			<div class="navbar-header">
                        <a class="navbar-brand"  href="#">Leave Management System.</a>
                    </div>
                    <ul class="nav navbar-nav">
                         <li><a href="adminHome.jsp">Home</a></li>
                        <li><a href="approve.jsp"> Approved Leave</a></li>
                        <li><a href="requestPageAdmin.jsp">Request</a></li>
                        <li><a href="reportAdmin.jsp">Report</a></li>
						<li><a href="history.jsp">History</a></li>
						<li><a href="deleteEmployee.jsp">Delete Employee</a></li>
						<li><a href="updateDetailsAdmin.jsp">Update Details</a></li>
                        <li class="active"><a href="resetPasswordAdmin.jsp">Reset Password</a></li>
                    </ul>
					 <ul class="nav navbar-nav pull-right">
                         <li><a href="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout"  value="Log Out"><font color="black">Log Out</font></a></li></ul>
                </div>
				</nav>
<form:form>
<table>
<tr><td>
<form:label path="password">Old Password<font color="red">*</font></form:label>
<input type="text"/></td></tr>
<tr><br/></tr>
<tr><td>
<form:label path="password1">New Password<font color="red">*</font></form:label>
<input type="text"/></td></tr>

<tr><td>
<form:label path="password2">Confirm Password<font color="red">*</font></form:label>
<input type="text"/></td></tr>
</table>
<br/>
<button ><a href ="" id="sub_password" type="submit">Submit</a></button>
<button ><a href="Home.jsp" type="submit" class="btn navbar-btn btn-danger" id="homepage">Cancel</a></button>


</form:form>

					   <br/><br/><br/>
<hr/>
<footer><p><em>Copyright@ 2017, Genkey-Africa,Ghana.</em></p></footer>
      </div>
    </body>
</html>