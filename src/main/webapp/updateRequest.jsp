<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Request</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>


</head>
<body style="text-align: center">

	<jsp:include page="adminheader.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<div class=container>
	<h3>Update Donation</h3>
	
	<form onsubmit="loadBooks()">
	


		<label>Request Type</label> <select id="requestType"><
			</select> <br />
			<br/>
			<label>Enter the amount you want to add:</label>
			<input type="number" name="requestAmount" id="requestAmount"
			placeholder="Enter amount" required />
			<br />
			<br/>
			<input type="submit" value="Submit" class="btn btn-success">&nbsp;
			<button type="reset" class="btn btn-danger" value="clear">clear
			</button>
			<br />
			<br/>
			</form>
			</div>

			<!-- Script -->
			

			<script>
				function loadBooks() {
				//	alert('entering');
					event.preventDefault();
					//alert('hello');
					var requestAmount = document
					.getElementById("requestAmount").value;
					//alert('amount');
					var requestType = document.getElementById("requestType").value;
					//alert('type');

					
					var formData = "requestType=" + requestType
							+ "&requestAmount=" + requestAmount;
					console.log(formData);
//					alert(formData);

					var url = "http://localhost:8080/mavenwebb/UpdateRequest?"
							+ formData;
					console.log(url);
				//	alert(url);
					var formData = {};
					//alert(formData);
					$.get(url, function(response) {
						console.log(response);
						console.log(response.errorMessage);
						//alert(response);
						var msg = JSON.parse(response);
						//alert(msg);

						if (msg.errorMessage != null) {
							alert("Request Type doesn't exists");
						} else {
							//alert("valid Username/Password");
							window.location.href = "?pageName=index.jsp";
						}

					});

				}

				function loadRequestTypes(){
					var url = "http://localhost:8080/mavenwebb/ListRequests";
					$.getJSON(url).then ( function (response) {
					var content = "";
					for ( let dr of response){
						console.log(dr);
						content +="<option value="+dr.id  +">"+dr.requestType+""+"(Rs."+dr.requestAmount+")"+"</option>";
					
					}
					console.log(content);
					document.getElementById("requestType").innerHTML= content;
					});

					}

				loadRequestTypes();
			</script>

			<!-- End -->
</body>
</html>