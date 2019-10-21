<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<title>REVATURE CHARITY TRUST</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>
<body style="text-align: center">

	
	<br />
	<br />
	<br />


	<div id="result"></div>
	<div class="container"class="container" style="
    opacity: 0.9;
    background-color: black;
    color: white;
">
		<h2>Donor Login</h2>
		<form onsubmit="login()">
			<label>Email:</label> <input type="email" name="email"
				id="email" placeholder="Enter Email" required autofocus /><br />
			<br /> <label>Password:</label> <input type="password"
				name="password" id="password" placeholder="Enter Password" required />
				<div class="custom-control custom-checkbox mb-3">
                     <input type="checkbox" class="custom-control-input" id="customCheck1">
                     <label class="custom-control-label" for="customCheck1" onclick="myFunction()">Show password</label>
                   </div>
				
			
			<br /> <input type="submit" value="Submit" class="btn btn-success">&nbsp;
			<button type="reset" class="btn btn-danger" value="clear">clear
			</button>
			<br />
			
		</form>
	</div>
	<script>
		
		function login(){
			   event.preventDefault();
			   var email = document.getElementById("email").value;
			   var password = document.getElementById("password").value;
			   var formData = "email=" + email + "&password=" + password ;
			   console.log(formData);
			   var url="http://localhost:9000/donor/login?"+formData;
			   console.log(url);
			   $.post(url).then(function(response) {
			       console.log("success");
			       console.log(response);
			       var msg=response;
			     if(msg!=null) {
			           alert(" Login Success");
			           localStorage.setItem("LOGGED_IN_USER", JSON
								.stringify(msg));
			             window.location.href = "?pageName=home.jsp";
			     }
			   },
			   function(response) {
			       console.log("Error");
			       console.log(response);
			        var data = response.responseJSON;
			       if (data != null) {
			           alert("Invalid email/password");
			          // window.location.href= "?pageName=donorlog.jsp";
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