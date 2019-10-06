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

	<jsp:include page="donorheader.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<style>
#detail {
	font-size: 200%;
}
</style>

	<div id="detail">
		<div>
			<div>
				<div style="color: white" id="name"></div>
			</div>
			<script>
				function displayName() {
					var user = JSON.parse(localStorage
							.getItem("LOGGED_IN_USER"));
					var name = user.name;
					document.getElementById("name").innerHTML = "Welcome ....."
							+ name;
					return name;
				}
				displayName();
			</script>

			<br /> <a href="?pageName=viewRequest.jsp">
				<h4>
					<font color="white">Fund requests
			</a> <br /> <br /> <a href="?pageName=ContributeToRequest.jsp"><font
				color="white">Contribute to our Request</font></a> <br /> <br /> <a
				href="?pageName=mydonations.jsp"><font color="white">My
					Donations
					</h4>
			</font></a>
</body>
</html>