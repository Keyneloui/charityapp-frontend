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
				name="Name" id="name" placeholder="Enter Name" pattern="[A-Za-z]{1,32}" title="Name should contains letters only"required autofocus />
			<br /> <br />
			<label>Email:</label> <input type="email" name="email" id="email"
				placeholder="Enter Email" required /> <br />
			<br /> <label>Password:</label> <input type="password" name="pass"
				id="password" placeholder="Enter Password"
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one number and one uppercase and lowercase letter, 
and at least 8 or more characters"
				required /> <br /> <br/>
				<!-- <label>Age:</label> <input type="number" name="number" id="number"
				placeholder="Enter Your age" min="10" max="100" title="Age must be above 10" required /> <br /> <br /> -->
			<input type="submit" value="Submit" class="btn btn-success">&nbsp;
			<button type="reset" class="btn btn-danger" value="clear">clear
			</button>
			<br /> Existing User ? <a href="?pageName=donorlog.jsp">Login</a> <br />



		</form>

	</div>

	<!--  	<div id="message">
  <h3>Password must contain the following:</h3>
  <h6 id="letter" class="invalid">A <b>lowercase</b> letter</h6>
  <h6 id="capital" class="invalid">A <b>capital (uppercase)</b> letter</h6>
  <h6 id="number" class="invalid">A <b>number</b></h6>
  <h6id="length" class="invalid">Minimum <b>8 characters</b></h6>
</div>
		<script>
		var password=document.getElementById("password");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");
		// When the user clicks on the password field, show the message box
		password.onfocus = function() {
		  document.getElementById("message").style.display = "block";
		}

		// When the user clicks outside of the password field, hide the message box
		password.onblur = function() {
		  document.getElementById("message").style.display = "none";
		}
					


		// When the user starts to type something inside the password field
		password.onkeyup = function() {
		  // Validate lowercase letters
		  var lowerCaseLetters = /[a-z]/g;
		  if(password.value.match(lowerCaseLetters)) {  
		    letter.classList.remove("invalid");
		    letter.classList.add("valid");
		  } else {
		    letter.classList.remove("valid");
		    letter.classList.add("invalid");
		  }
		  
		  // Validate capital letters
		  var upperCaseLetters = /[A-Z]/g;
		  if(password.value.match(upperCaseLetters)) {  
		    capital.classList.remove("invalid");
		    capital.classList.add("valid");
		  } else {
		    capital.classList.remove("valid");
		    capital.classList.add("invalid");
		  }

		  // Validate numbers
		  var numbers = /[0-9]/g;
		  if(password.value.match(numbers)) {  
		    number.classList.remove("invalid");
		    number.classList.add("valid");
		  } else {
		    number.classList.remove("valid");
		    number.classList.add("invalid");
		  }
		  
		  // Validate length
		  if(password.value.length >= 8) {
		    length.classList.remove("invalid");
		    length.classList.add("valid");
		  } else {
		    length.classList.remove("valid");
		    length.classList.add("invalid");
		  }
		}
	
		</script>		-->


	<script>
		function register() {
			event.preventDefault();
			var name = document.getElementById("name").value;
			var email_id = document.getElementById("email").value;
			var password = document.getElementById("password").value;

			var formData = "name=" + name + "&email=" + email_id
					+ "&password=" + password;

			console.log(formData);
			 var url="http://localhost:9000/donor/donorRegistration?"+formData;
			   console.log(url);
			   $.post(url).then(function(response) {
			       console.log("success");
			       console.log(response);
			       var msg=response;
			     if(msg!=null) {
			           alert(" Registration Success,Kindly Login to continue");
			           localStorage.setItem("LOGGED_IN_USER", JSON
								.stringify(msg));
			             window.location.href = "?pageName=donorlog.jsp";
			     }
			   },
			   function(response) {
			       console.log("Error");
			       console.log(response);
			        var data = response.responseJSON;
			       if (data != null) {
			           alert("User already exists,Kindly login");
			           window.location.href= "?pageName=register.jsp";
			       }
							});
		}
	</script>
</body>
</html>