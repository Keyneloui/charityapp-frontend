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
<body style="text-align: center">
	<jsp:include page="header.jsp"></jsp:include>
	<br />
	<br />
	<br />

	
	<a href="?pageName=viewRequest.jsp"> Our Donations</a>
	<br />
	<a href="?pageName=ContributeToRequest.jsp">Contribute to our Request</a>
	<br/>
	<br/>
	<button type="reset" class="btn btn-danger" value="clear">Log out <a href="?pageName=hello.jsp"></a>
		</button>
</body>
</html>