<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">

<script src="js/bootstrap.min.js"></script>
<title>Revature Charity</title>
</head>
<body style="text-align: center" >

	<jsp:include page="donorheader.jsp"></jsp:include>
	<br />
	<br />
	<br />

	
	<a href="?pageName=viewRequest.jsp"> <h4><font color="white">Fund requests</a>
	<br />
	<br/>
	<a href="?pageName=ContributeToRequest.jsp"><font color="white">Contribute to our Request</font></a>
	<br/>
	<br/>
	<a href="?pageName=mydonations.jsp"><font color="white">My Donations</h4></font></a>
	<!--  <input type="button" value="Logout" class="btn btn-danger"  onclick="logout()">
		
		<script>
		function logout()
		{
			localStorage.clear();
			window.location.href="?pageName=hello.jsp"}
		</script>-->
</body>
</html>