<%@page contentType="text/html"%>
<%@taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags"%>

<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Leave Management System.</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700"
	rel="stylesheet" type="text/css">

<script src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="css/bootstrap-3.3.7-dist/js/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="css/bootstrap-3.3.7-dist/js/login.js"></script>
<link href="loaderGif.css" rel="stylesheet">


<link href="bootstrap.min.css" rel="stylesheet">
<link href="modal.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="login.css">

<style type="text/css">
.slider {
	width: 350px;
	height: 200px;
	overflow: hidden;
	margin: 30px auto;
	background-image: url(loader1.gif);
	background-repeat: no-repeat;
	background-position: center;
	border-style: none;
}

.slider img {
	width: 350px;
	height: 200px;
	display: none;
	border-style: none;
}

</style>

</head>

<body onload="Slider()">
	<div id="loaderGif">
		<img src="images/ajax-loader.gif" class="ajax-loader" />
	</div>



	<div id="wrapper" style="width: 550px; border-radius: 50px;">
		<div id="page" style="width: 600px; border-radius: 50px;">
			<div id="content">

				<h2>
					<span>Sign In</span>
				</h2>
				<br>
				<ul class="style2">

					<li class="first">
 <c:url var="loginUrl" value="/login" />
						<form name="form1" method="post" class="form-horizontal"
							action="${loginUrl}" ><!--th:action="@{/login}"th:object="${login}" role="form"-->

<c:if test="${param.error != null}">
                                <div class="alert alert-danger">
                                    <p>Invalid username and password.</p>
                                </div>
                            </c:if>
                            <c:if test="${param.logout != null}">
                                <div class="alert alert-success">
                                    <p>You have been logged out successfully.</p>
                                </div>
                            </c:if>

							<label for="username" class="col-sm-2 control-label">Username</label>

							<div class="form-group">
								<div class="col-sm-4">
									<input type="text" th:field="*{username}"class="form-control " id="username"
										name="ssoId" placeholder="Enter Username" required>
								</div>
							</div>


							<label for="inputPassword3" class="col-sm-2 control-label">Password</label>



							<div class="form-group">
								<div class="col-sm-4">
									<input type="password"  th:field="*{password}" class="form-control " id="password"
										name="password" maxlength="15" placeholder="Enter Password" required>
								</div>
							</div>
<div class="input-group input-sm">
                              <div class="checkbox">
                                <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>  
                              </div>
</div>
<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />


							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<ul><button type="submit" id="loginButton"
										onclick="$('#loaderGif').show()" ; class="btn btn-success">
										Login</button>
										<button><a href="registration.jsp" type="submit" class="btn navbar-btn btn-danger" name="Sign Up" id="SignUp"  value="Redirect">Sign Up</a>
                                                                                    </button>
								</ul></div>
							</div>
						</form>
						
				
					</li>

				</ul>
			</div>
		</div>
	</div>

	<div id="footer">
		<p><em>Copyright@ 2017,Genkey-Africa,Ghana
			<br> All rights
			reserved.</em><br> 
		</p>
	</div>
</body>
</html>
