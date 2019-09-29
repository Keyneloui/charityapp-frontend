<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contribute to Requests</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>
<body style="text-align: center">
	<jsp:include page="donorheader.jsp"></jsp:include>
	<br />
	<br />
	<br />
	

	<div id="result"></div>
	
<div class=container>
<p><h2>Donate a little!</h2></p>
	<form onsubmit="loadBooks()">
		 <label>Email Id:</label> <input type="email" name="emailId"
			id="emailId" placeholder="Enter email Id" required autofocus /> <br />
			<br/>
		<label>Request Type</label> <select id="mySelect"><option>Food</option>
			<option>Medicine</option>
			<option>Education</option>
			<option>Others</option> 
		</select > <br/><br /> <label>Amount You Want to Contribute:</label> <input
			type="number" name="requestAmount" id="requestAmount"
			placeholder="Enter amount" min="1" max="20000" required /> <br/><br /> <input
			type="submit" value="Submit" class="btn btn-success">&nbsp;
		<button type="reset" class="btn btn-danger" value="clear">clear
		</button>

		
	</form>
	</div>
	<!-- Scriplets -->
	<script>
		function loadBooks() {
			event.preventDefault();
			//alert('entering');
			var requestType = document.getElementById("mySelect").value;
			var emailId = document.getElementById("email").value;
		//	var storedValue = localStorage.getItem("email");
			var requestAmount = document.getElementById("requestAmount").value;
			var formData = "requestType=" + requestType + "&emailId=" + emailId
					+ "&requestAmount=" + requestAmount;
			console.log(formData);
			//	alert(formData);

			var url = "http://localhost:8080/mavenwebb/ContributeRequest?"
					+ formData;
			console.log(url);
			//	alert(url);
			var formData = {};
			//	alert(formData);
			$
					.get(
							url,
							function(response) {

								console.log(response);
								console.log(response.errorMessage);
								var msg = JSON.parse(response);
								//	alert(msg);

								if (msg.errorMessage != null) {
									alert("Email Id not found..please enter your registered email-id");
								} else {
									//alert("valid Username/Password");
									alert("Thank You for your contribution");

									window.location.href = "?pageName=home.jsp";
								}
							});

		}
	</script>

	<!-- End -->
</body>
</html>