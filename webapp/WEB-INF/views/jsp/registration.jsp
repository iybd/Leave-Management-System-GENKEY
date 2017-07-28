<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>
<html>
    <head>
        <link rel="stylesheet" href="alt.css" type="text/css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <!--  <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Create User Page.</title>
    </head>
    <body>
        <!--         -->
        <div class="container-fluid"  modelAttribute="user">

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Leave Management System.</a>
                    </div>

                    <ul class="nav navbar-nav pull-right">
                       <!-- <li><button method="get" action="index.html" type="submit" class="btn navbar-btn btn-danger" name="logout" id="logout"  value="Log Out">Log Out</button></li></ul>-->
                </div>
            </nav>
            <div  class="form-group">
                <form><center><a href="login.jsp" type="submit" class="btn navbar-btn btn-danger" name="login" id="login"  value="Go to Login">Go to Login</a><center>
</form>
            </div>
                <div class="generic-container">
				<div class="well lead">User Registration Form</div>
                <form:form modelAttribute="user" id="regForm" method="POST" class="form-horizontal">
                    <!--align="center"-->
                    
<form:input type="hidden" path="id" id="id"/>
                     
                     <div class="row">
                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" path="username" >Username<font color="red">*</font></label>
                            <div class="col-md-7">
                            <form:input class="form-control input-sm" type="text" path="username" name="username" id="username" />
                      <div class="has-error">
                            <form:errors path="username" class="help-inline"/>
                        </div>
						     </div>
                </div>
            </div>
			<div class="row">
                <div class="form-group col-md-12">
 
                                    <label class="col-md-3 control-lable" for="password" path="password">Password<font color="red">*</font></label> 
                                        <div class="col-md-7">
										<form:input  type="text" path="password" name="password" id="password" />
											   <div class="has-error">
                            <form:errors path="password" class="help-inline"/>
                        </div>  </div>
                </div>
            </div>		
                                       
										<div class="row">
                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="Confirmpassword" path="password"> Confirm Password<font color="red">*</font></label>
                                      <div class="col-md-7">
									  <form:input path="password" name="password" id="password" />
										<div class="has-error">
                            <form:errors path="password" class="help-inline"/>
                        </div>
                     			     </div>
                </div>
            </div>
			
					 <div class="row">
                <div class="form-group col-md-12">
                                   
								   <label  class="col-md-3 control-lable" for="firstname" path="firstname">First Name<font color="red">*</font></label> 
                                      <div class="col-md-7">
<div class="has-error">
                            <form:errors path="firstname" class="help-inline"/>
                        </div>									  <form:input path="firstname" name="firstname" id="firstname" />
													     </div>
                </div>
            </div>
			
                                  <div class="row">
                <div class="form-group col-md-12">
                                    <label  class="col-md-3 control-lable" for="lastname" path="lastname">Last Name<font color="red">*</font></label> 
                                      <div class="col-md-7">
									  <form:input path="lastname" name="lastname" id="lastname" />
												<div class="has-error">
                            <form:errors path="lastname" class="help-inline"/>
                        </div>     </div>
                </div>
            </div>
			<div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="ssoId">SSO ID</label>
                    <div class="col-md-7">
                        <c:choose>
                            <c:when test="${edit}">
                                <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true"/>
                            </c:when>
                            <c:otherwise>
                                <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
                                <div class="has-error">
                                    <form:errors path="ssoId" class="help-inline"/>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
                                 <div class="row">
                <div class="form-group col-md-12">
                                    
									<label class="col-md-3 control-lable" for="gender" path="gender"> Gender: <font color="red">*</font></label>
                                    <div class="col-md-7">
									<label class = "radio-inline">   <input path="gender" value="M" label="M" type="radio" name="optradio"> Male</input> </label>
										
                                      <label class = "radio-inline">  <input path="gender" value="F" label="F" type="radio" name="optradio"> Female </input> </label>
                             
							 			     </div>
                </div>
            </div>
			
							 <div class="row">
                <div class="form-group col-md-12">
							   
                                        <label  class="col-md-3 control-lable" for="email" path="email">Email:<font color="red">*</font></label> 
                                          <div class="col-md-7">
										  <form:input path="email" name="email" id="email" type="text" />
                             			     <div class="has-error">
                            <form:errors path="email" class="help-inline"/>
                        </div> </div>
                </div>
            </div>
			
<div class="row">
                <div class="form-group col-md-12">  
                                        <label  class="col-md-3 control-lable" for="employee_id" path="employee_id">Employee ID:</label> 
                                          <div class="col-md-7">
										  <form:input path="employee_id" name="employee_id"id="employee_id" type ="text">
                                   			     </div>
                </div>
            </div><div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="userProfiles">Roles</label>
                    <div class="col-md-7">
                        <form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="role" class="form-control input-sm" />
                        <div class="has-error">
                            <form:errors path="userProfiles" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>

<div class="row">
                <div class="form-group col-md-12">
<div>
                             

                                        <label  class="col-md-3 control-lable" for="department" path="department"> Department :<font color="red">*</font></label> 
<div class="col-md-7"><label class = "checkbox-inline"><form:input id="rate1"type="checkbox" path="Sales" value="Sales" label="Sales">Sales</input></label>
                                   <br/><br/><label class = "checkbox-inline"><form:input id="rate"type="checkbox" path="Development" value="Development" label="Development"/>Development Team</input></label>
                                     <br/><br/><label class = "checkbox-inline"><form:input id="rate2"type="checkbox"path="Administration" value="Administration" label="Administration"/>Administration(Finance,Accounting& IntermediateCostCenter)</input></label>
                                        <br/><br/><label class = "checkbox-inline"><form:input id="rate3"type="checkbox"path="Support" value="Support" label="Support"/>Support Team</input></label>
											<br/><br/><label class = "checkbox-inline"><form:input id="rate4"type="checkbox"path="QualityA" value="QualityA" label="QualityA"/>Quality Assurance Team</input></label>
   </div>   			     </div>
                </div>
            </div>
   
                                     

<div class="row">
                <div class="form-group col-md-12">

                                   
                                        <label  class="col-md-3 control-lable" for="phone" path="phone">Phone Number:<font color="red">*</font></label> 
                                       <div class="col-md-7">
									   <form:input type="text" path="phone" name="phone" id="phone" />
                              			     </div>
                </div>
            </div>
							  <div class="row">
                <div class="form-actions floatRight">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/login' />">Cancel</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>


                           

                            <br/><br/><br/>
                            <hr/>
                            <footer><p>Copyright@ 2017, Genkey-Africa,Ghana.</p></footer>
                       </form:form> </div>
                    
                </div>
                                        
            
        </body>



    </html>