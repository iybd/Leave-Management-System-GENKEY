<%-- 
    Document   : RequestPage
    Created on : Jul 5, 2017, 3:41:01 PM
    Author     : GEN-NTB-410
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Leave</title>
        <link rel="stylesheet" href="alt.css" type="text/css" >
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Leave Management System.</a>
                    </div>
                    <ul class="nav navbar-nav">
                         <li><a href="home.jsp">Home</a></li>
                        <li><a href="leaveNotification.jsp">Leave Notifications</a></li>
                        <li class="active"><a href="#">Request</a></li>
                        <li><a href="reportEm.jsp">Report</a></li>
                        <li><a href="resetPasswordEm.jsp">Change Password</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <li><button method="get" action="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout"  value="Log Out">Log Out</button></li></ul>
                </div>
            </nav> 
            <div class="table-responsive"> 
                <form>
                <table class="table" align="center">
                    <tr>
                        <td>
                             <form:label path="employee_id">Employee ID:</form:label>
                             <input type="text"/>
                        </td>
                    </tr>
                     <tr>
                        <td>
                             <form:label path="employee_name">Employee Name:</form:label>
                             <input type="text"/>
                        </td>
                    </tr>
                     <tr>
                        <td>
                             <form:label path="username">Username:</form:label>
                             <input type="text"/>
                        </td>
                    </tr>
                     <tr>
                        <td>
                             <form:label path="type_of_leave">Type of Leave:<font color="red">*</font></form:label>
                            
                        </td>
                    </tr>
                     <tr>
                        <td>
                             <form:label path="start_date">Start Date:<font color="red">*</font></form:label>
                            
                        </td>
                    </tr>
                     <tr>
                        <td>
                             <form:label path="end_date">End Date:<font color="red">*</font></form:label>
                                 </td>
                    </tr>
                              <tr>
                        <td>
                             <form:label path="number_of_days">Number of Days:</form:label>
                             <input type="text"/>
                        </td>
                    </tr>
                    
                     <tr>
                <td></td>
                <td>
              <button method="get" action="successfulApply.jsp"
                 type="submit" id="apply" name="apply">Apply</button>
          
              <button method="get" action="home.jsp"
                 type="submit" class="btn navbar-btn btn-danger" id="cancel" name="cancel">Cancel</button>
             </td>
            </tr>
            
                    </table>
                             <br/><br/><br/>
<hr/>
<footer><p>Copyright@ 2017, Genkey-Africa,Ghana.</p></footer>
                </form>
            </div>
        </div>
    </body>
</html>
