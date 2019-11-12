<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Register</title>
<title>REVATURE CHARITY TRUST</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/password.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>

<body style="text-align: center">


	<jsp:include page="header.jsp"></jsp:include>





	
	<div class="container" style="
    opacity: 0.9;
    background-color: black;
    color: white;
">
		<h2>Donor Registration</h2>

		<form onsubmit="register()">


			<br /> <br /> <br /> <label>Name:</label> <input type="text"
				name="Name" id="name" placeholder="Enter Name" pattern="[A-Za-z\s]{1,32}" title="Name should contains letters only"required autofocus />
			<br /> <br />
			<label>Email:</label> <input type="email" name="email" id="email"
				placeholder="Enter Email" pattern="[a-z0-9._%+-]+@[a-z-]+\.[a-z]{2,}$"required /> <br />
			<br /> <label>Password:</label> <input type="password" name="pass"
				id="password" placeholder="Enter Password"
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one number and one uppercase and lowercase letter, 
                and at least 8 or more characters"
				required /> <br /> <br/>
				 <div class="custom-control custom-checkbox mb-3">
                     <input type="checkbox" class="custom-control-input" id="customCheck1">
                     <label class="custom-control-label" for="customCheck1" onclick="myFunction()">Show password</label>
                   </div>
				
			<input type="submit" value="Register"class="btn btn-success">&nbsp;
			<button type="reset" class="btn btn-danger" value="Reset">Reset
			</button>
			<br /> Existing User ? <a href="?pageName=donorlog.jsp">Login</a> <br />



		</form>

	

	<script>
		function register() {
			event.preventDefault();
			var name = document.getElementById("name").value;
			var email_id = document.getElementById("email").value;
			var password = document.getElementById("password").value;

			var formData = "name=" + name + "&email=" + email_id
					+ "&password=" + password;

			console.log(formData);
			 var url=server+"/donor/donorRegistration?"+formData;
			   console.log(url);
			   $.post(url).then(function(response) {
			       console.log("success");
			       console.log(response);
			       var msg=response;
			     if(msg!=null) {
			           alert(" Registration Success,Kindly Login to continue");
			         
			             window.location.href = "?pageName=donorlog.jsp";
			     }
			   },
			   function(response) {
			       console.log("Error");
			       console.log(response);
			        var data = response;
			        if (data.responseText!= null) {
			            alert(data.responseJSON.message);
			       }
							});
		}
		function myFunction() {
			  var x = document.getElementById("password");
			  if (x.type === "password") {
			    x.type = "text";
			  } else {
			    x.type = "password";
			  }
			}
	</script>
</body>
</html>