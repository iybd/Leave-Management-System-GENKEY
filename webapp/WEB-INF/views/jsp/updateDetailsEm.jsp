<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Leave Notification</title>
 <link rel="stylesheet" href="alt.css" type="text/css" >
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
        <div class="container-fluid">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Leave Management System.</a>
                    </div>
                    <ul class="nav navbar-nav">
                         <li><a href="home.jsp">Home</a></li>
                       
                        <li ><a href="requestPageEm.jsp">Request</a></li>
                        <li><a href="reportEm.jsp">Report</a></li>
                        <li class="active"><a href="updateDetailsEm.jsp">Update Details</a></li>
                        <li><a href="resetPasswordEm.jsp">Reset Password</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                                              <li><a href="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout"  value="Log Out"><font color="black">Log Out</font></a></li>
					   <!--<li><button  method="get" action="Login.jsp"href="Login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout"  value="Log Out">Log Out</button></li> --></ul>
                </div>
            </nav> 
			<form:form>
			<table>
			
			<tr><td>
			<div>
			<form:label path ="UserName">Username</form:label>
			<input type="text"/>
			</div></td></tr>
			
			<tr><td>
			<div>
			<form:label path ="LastName">Last Name:</form:label>
			<input type="text"/>
			</div></td></tr>
			
			
			
			<tr><td>
			<div>
			<form:label path ="ContactNumber">Contact Number:</form:label>
			<input type="text"/>
			</div></td></tr>
			
			</table>
			<button><a href="" type="submit">Update</button>
			   <button method="get" action="Home.jsp"
                 type="submit" class="btn navbar-btn btn-danger" id="cancel" name="cancel">Cancel</button>
			</from:form>

 <br/><br/><br/>
<hr/>
<footer><em><p>Copyright@ 2017, Genkey-Africa,Ghana.</p></em></footer>
           
        </div>
    </body>
</html>