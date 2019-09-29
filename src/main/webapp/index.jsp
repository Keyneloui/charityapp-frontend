<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body style="text-align: center">


	<jsp:include page="adminheader.jsp"></jsp:include>
	<br />
	<br />
	<br />

             
    <form onsubmit="register()">
	  <a href="?pageName=listdonation.jsp"> Our Donations</a>
	<br />
	<a href="?pageName=addrequest.jsp"> Add Donations</a>
	<br />
	<a href="?pageName=updateRequest.jsp">Update Donation</a>
	<br />
	<a href="?pageName=donorList.jsp"> Donor List</a>
	<br />
	<br/>
	<input type="button" value="Logout" class="btn btn-danger"  onclick="logout()">
		
		<script>
		function logout()
		{
			localStorage.clear();
			window.location.href="?pageName=hello.jsp"}
		</script>
	
	
	


</body>
</html>
