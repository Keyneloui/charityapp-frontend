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
	<div>
	
	</div>
	<script>
    function displayName() {
        var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
        var name = user.name;
        document.getElementById("name").innerHTML = "Welcome ....." + name;
        return name;
    }
    displayName();
</script>

	<div class="container">
	<div id="name"></div>
	<a href="?pageName=viewRequest.jsp"> <h4>Fund requests</a>
	<br />
	<br/>
	<a href="?pageName=ContributeToRequest.jsp">Contribute to our Request</a>
	<br/>
	<br/>
	<a href="?pageName=mydonations.jsp">My Donations</h4></a>
	</div>
	<!--  <input type="button" value="Logout" class="btn btn-danger"  onclick="logout()">
		
		<script>
		function logout()
		{
			localStorage.clear();
			window.location.href="?pageName=hello.jsp"}
		</script>-->
</body>
</html>