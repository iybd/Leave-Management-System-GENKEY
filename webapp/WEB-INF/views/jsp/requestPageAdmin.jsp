<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Request Page </title>
<!-- Include Bootstrap Datepicker -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

 <!--<link rel="stylesheet" href="alt.css" type="text/css" >-->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--jquery-->
 <script>
$(document).ready(function() {
    $('#datePicker')
        .datepicker({
            format: 'mm/dd/yyyy'
        })
        .on('changeDate', function(e) {
            // Revalidate the date field
            $('#eventForm').formValidation('revalidateField', 'date');
        });

    $('#eventForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            name: {
                validators: {
                    notEmpty: {
                        message: 'The name is required'
                    }
                }
            },
            date: {
                validators: {
                    notEmpty: {
                        message: 'The date is required'
                    },
                    date: {
                        format: 'MM/DD/YYYY',
                        message: 'The date is not a valid'
                    }
                }
            }
        }
    });
});
</script>
   <style type="text/css">
body{
font-family:Aerial;
}
 .selectContainer .form-control-feedback {
    /* Adjust feedback icon position */
	top:0;
    right: -15px;

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
                        <li class="active"><a href="requestPageAdmin.jsp">Request</a></li>
                        <li><a href="reportAdmin.jsp">Report</a></li>
						<li><a href="history.jsp">History</a></li>
						<li><a href="deleteEmployee.jsp">Delete Employee</a></li>
						<li><a href="updateDetailsAdmin.jsp">Update Details</a></li>
                        <li><a href="resetPasswordAdmin.jsp">Reset Password</a></li>
                    </ul>
					 <ul class="nav navbar-nav pull-right">
                        <li><a href="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout" ="black" value="Log Out"><font color="black">Log Out</font></a></li></ul>
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
                            <!-- <form:label path="type_of_leave">Type of Leave:<font color="red">*</font></form:label>-->
		<form:label class="control-label">Type of Leave <font color="red">*</font> </form:label>
							 <div class="form-group">
        <div class=" col-xs-5 selectContainer">
            <select name="TypeOfLeave" class="form-control">
                <option value="Type">Type of Leave</option>
                <option value="casual">Casual</option>
                <option value="maternity">Maternity</option>
                <option value="Paternity">Paternity</option>
                <option value="Sick Leave">Sick Leave</option>
                <option value="other">Other</option>
            </select>
			 </div>
			 </div>
			</td></tr>
			<tr>
			<td>
			<form:label path="specify">If other,specify here:</form:label>
			<input id="specify" type="text"/>
			</td></tr>
   
                       
                     <tr>
                        <td>
						<form:label class="control-label"> Start Date<font color="red">*</font></form:label>
					 <div class="form-group">
        
        <div class="col-xs-5 date">
            <div class="input-group input-append date" id="datePicker">
                <input type="text" class="form-control" name="date" />
                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
        </div>
    </div></td>
                    </tr>
                     <tr>
                        <td>
						<form:label class="control-label">End Date <font color="red">*</font></form:label>
    <div class="form-group">
        
        <div class="col-xs-5 date">
            <div class="input-group input-append date" id="datePicker">
                <input type="text" class="form-control" name="date" />
                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
        </div>
    </div>
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
          
              <button method="get" action="adminHomeome.jsp"
                 type="submit" class="btn navbar-btn btn-danger" id="cancel" name="cancel">Cancel</button>
             </td>
            </tr>
            
                    </table>
		
					<br/><br/>
					
					<hr/>
<footer><em><p>Copyright@ 2017, Genkey-Africa,Ghana.</p></em></footer>
 </div>
					</body>
					</html>