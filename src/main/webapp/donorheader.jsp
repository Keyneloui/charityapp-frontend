<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
<title>REVATURE CHARITY TRUST</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<header>
<script>
		function logout()
		{
			event.preventDefault();
			localStorage.clear();
			window.location.href="?pageName=hello.jsp";
		}
		</script>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar-brand" href="#">REVATURE CHARITY TRUST</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">


				
				<li class="nav-item"><a class="nav-link"
					href="?pageName=ContributeToRequest.jsp">Contribute <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="?pageName=viewRequest.jsp">Fund Request<span
						class="sr-only">(current)</span></a></li>
						<li class="nav-item"><a class="nav-link"
					href="" onclick="logout()">Log out <span
						class="sr-only">(current)</span></a></li>
		</div>
	</nav>


</html>