<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.container {
    position: relative;
    text-align: center;
    color: black;
}


.centered {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
</style>

</head>
<body>
<%-- 
	<span style="color: red">${error }</span>
	<br> ${msg }
	<br>
	<h5><b>Login Page</b></h5>
	<c:url value="/j_spring_security_check" var="url"></c:url>
	<form method="post" action="${url }">
	Enter Email :<input type="text" name="j_username"><br>
	Enter password : <input type="password" name="j_password">&nbsp;<input
			type="submit" value="Login">
	</form>
	 --%>
	
	<div class="container">
  <img src="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\n.jpg" alt="Snow" style="width:100%;">
   <div class="centered"><span style="color: red">${error }</span>
	 ${msg }
		<h3>Login Page</h3>
	<c:url value="/j_spring_security_check" var="url"></c:url>
	<form method="post" action="${url }">
	<p>Enter E-mail: <input type="text" name="j_username"><br></p>
	<p>Enter password: <input type="password" name="j_password"><br>
	<p align="center"><input type="submit" value="Login"></p>
	</form></div>
</div>

	
	
	<!-- <table height="1000" width="1000" background="E:\E-Commerce\NatureFront\src\main\webapp\WEB-INF\images\n.jpg" cellspacing="0" cellpadding="0"> -->
</body>
</html>