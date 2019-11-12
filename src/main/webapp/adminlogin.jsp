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

	<jsp:include page="header.jsp"></jsp:include>
	<br />
	<br />
	<br />
	
 <div class="container"style="
    opacity: 0.9;
    background-color: black;
    color: white;">
		<h2>Admin Login</h2>
		
		<form onsubmit="login()">
		
			<label>Email:</label> <input type="email" name="email"
				id="email" placeholder="Enter Email" pattern="[a-z0-9._%+-]+@[a-z-]+\.[a-z]{2,}$"required autofocus /> <br />
			<br /> <label>Password:</label> <input type="password"
				name="password" id="password" placeholder="Enter Password" required />
				<br/>
                   <div class="custom-control custom-checkbox mb-3">
                     <input type="checkbox" class="custom-control-input" id="customCheck1">
                     <label class="custom-control-label" for="customCheck1" onclick="myFunction()">Show password</label>
                   </div>
				
			
			<br /> <input type="submit" value="Login" class="btn btn-success">&nbsp;
			<button type="reset" class="btn btn-danger" value="Reset">clear
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
		   var url=server+"/admin/login?"+formData;
		   var login=$.post(url);
		   console.log(url);
		   login.then(function(response) {
		       console.log("success");
		       console.log(response);
		       var msg=response;
		     if(msg!=null) {
		           alert(" Login Success");
		           localStorage.setItem("LOGGED_IN_USER", JSON
							.stringify(msg));
		             window.location.href = "?pageName=homePage.jsp";
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