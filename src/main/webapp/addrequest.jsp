<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add request Type</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/bootstrap.min.js"></script>


<script src="js/jquery-3.4.1.min.js"></script>

</head>
<body style="text-align: center">

	<jsp:include page="adminheader.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<div class="container"style="
    opacity: 0.9;
    background-color: black;
    color: white;">
		<h3>Add Fund Request</h3>
		<form onsubmit="loadRequest()">

			<br />
			<br /> <label>Request Type:</label> <input type="text"
				name="requestType" id="requestType" placeholder="Enter request Type" 
				 pattern="[A-Za-z]{1,32}"
				title="Request type should be valid and must contain words only"
				required autofocus /> <br /> <br />
				
				 <br />
			<label>Request Amount:</label> <input type="number"
				name="requestAmount" id="requestAmount" placeholder="Enter amount"
				min="1" max="1000000" required /> <br /> <br />
			<input type="submit" value="Submit" class="btn btn-success">&nbsp;
			<button type="reset" class="btn btn-danger" value="clear">clear
			</button>
			<br /> <br />
		</form>
	</div>

	<!-- Script -->

	<script>
		function loadRequest() {
			event.preventDefault();
			var requestType = document.getElementById("requestType").value;
			//	var requestId = document.getElementById("requestId").value;
			var requestAmount = document.getElementById("requestAmount").value;
			var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
			var userId=user.id;
			
			var formData = "requestType=" + requestType + "&requestAmount="
					+ requestAmount +"&adminId=" +userId ;
			console.log(formData);

			var url = "http://localhost:9000/admin/raiseFundRequest?" + formData;
			console.log(url);
			   $.get(url).then(function(response) {
			       console.log("success");
			       console.log(response);
			       var msg=response;
			       if(msg!=null) {
			           alert(" Request added successfully!!");
			            window.location.href = "?pageName=homePage.jsp";
			     }
			   },
			   function(response) {
			       console.log("Error");
			       console.log(response);
			        var data = response.responseJSON;
			       if (data != null) {
			           alert("Request Type already exists,Kindly enter a new request");
			          // window.location.href= "?pageName=addrequest.jsp";
			       }

							});

		}
	</script>

	<!-- End -->
</body>


</html>