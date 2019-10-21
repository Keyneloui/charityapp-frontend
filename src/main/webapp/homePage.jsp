<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Charity</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="text-align: center">


	<jsp:include page="adminheader.jsp"></jsp:include>
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
					document.getElementById("name").innerHTML = "Welcome";
						
					return name;
				}
				displayName();
			</script>
			<p><font color="white">Here you can view the fund request,add fund request,update fund request,view the Donor details
			and Donor Donation details</font>



	<!--  <a href="?pageName=listdonation.jsp"><h4>
			<font color="white">Fund Requests</a>
	<br />
	<br />

	<a href="?pageName=addrequest.jsp"> <font color="white">Add Fund
			Requests</a>
	<br />
	<br />

	<a href="?pageName=updateRequest.jsp"><font color="white">Update Fund
			Requests</a>
	<br />
	<br />

	<a href="?pageName=donorList.jsp"> <font color="white">Funded
			Donors</a>
	<br />
	<br />
	
	<a href="?pageName=registeredDonor.jsp"> <font color="white">Registered
			Donor</a>
	<br />
	<br />-->







</body>

</html>