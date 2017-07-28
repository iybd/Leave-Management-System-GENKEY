<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Delete Employee</title>
<!-- <link rel="stylesheet" href="alt.css" type="text/css" >-->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style type="text/css">
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
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
						<li class="active"><a href="deleteEmployee.jsp">Delete Employee</a></li>
						<li><a href="updateDetailsAdmin.jsp">Update Details</a></li>
                        <li><a href="resetPasswordAdmin.jsp">Reset Password</a></li>
                    </ul>
					 <ul class="nav navbar-nav pull-right">
                         <li><a href="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout" ="black" value="Log Out"><font color="black">Log Out</font></a></li></ul>
                </div>
					</nav>
			<div class="generic-container">

        <div class="panel panel-default">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">List of Users </span></div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Email</th>
                        <th>SSO ID</th>
                        <sec:authorize access="hasRole('ADMIN') ">
                            <th width="100"></th>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ADMIN')">
                            <th width="100"></th>
                        </sec:authorize>
                         
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.email}</td>
                        <td>${user.ssoId}</td>
                        <sec:authorize access="hasRole('ADMIN')">
                            <td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ADMIN')">
                            <td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
                        </sec:authorize>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <sec:authorize access="hasRole('ADMIN')">
            <div class="well">
                <a href="<c:url value='/CreateUser'>Add New User</a>
            </div>
        </sec:authorize>
    </div>
					<br/><br/>
					
					<hr/>
<footer><em><p>Copyright@ 2017, Genkey-Africa,Ghana.</p></em></footer>
</div>
					</body>
					</html>