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
	<div class="container"style="
    opacity: 0.9;
    background-color: black;
    color: white;">
		<h3>Update Fund Request</h3>

		<form onsubmit="loadRequest()">



			<label>Request Type</label> <select id="requestType"><
			</select> <br /> <br /> <label>Enter the amount you want to add:</label> <input
				type="number" name="requestAmount" id="requestAmount"
				placeholder="Enter amount" min="1" max="1000000" required /> <br />
			<br /> <input type="submit" value="Submit" class="btn btn-success">&nbsp;
			<button type="reset" class="btn btn-danger" value="clear">clear
			</button>
			<br /> <br />
		</form>
	</div>

	<!-- Script -->


	<script>
				function loadRequest() {
				
					event.preventDefault();
					
					
					var requestAmount = document
					.getElementById("requestAmount").value;
					
					var requestType = document.getElementById("requestType").value;

					var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
					var userId=user.id;
					

					
					var formData = "requestType=" + requestType
							+ "&requestAmount=" + requestAmount +"&adminId=" +userId;
					console.log(formData);
					var url = server+"/admin/updateFundRequest/"+ requestType +"?" + formData;
					console.log(url);
					   $.get(url).then(function(response) {
					       console.log("success");
					       console.log(response);
					       var msg=response;
					     if(msg!=null) {
					    	 alert("Request has been updated");
								window.location.href = "?pageName=homePage.jsp";
					     }
					   },
					   function(response) {
					       console.log("Error");
					       console.log(response);
					        var data = response.responseJSON;
					       if (data != null) {
					           alert("Request Type not found");
					          // window.location.href= "?pageName=updateRequest.jsp";
					       }

					});

				}

				function loadRequestTypes(){
					
					var url = "http://localhost:9000/admin/listFundRequest";
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