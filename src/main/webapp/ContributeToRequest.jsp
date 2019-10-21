<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contribute to Requests</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body style="text-align: center">

	<jsp:include page="donorheader.jsp"></jsp:include>
	<br />
	<br />
	<br />


	<div id="result"></div>

	<div class="container"style="
    opacity: 0.9;
    background-color: black;
    color: white;">
		<p>
		<h2>Donate a little!</h2>
		</p>
		<form onsubmit="loadRequest()">
			<label>Request Type</label> <select id="requestType"><
			</select> <br />  <br /> <br /> <label>Amount You Want to
				Contribute:</label> <input type="number" name="requestAmount"
				id="requestAmount" placeholder="Enter amount" min="1"
				max="1000000" required /> <br /> <br /> <input type="submit"
				value="Submit" class="btn btn-success">&nbsp;
			<button type="reset" class="btn btn-danger" value="clear">clear
			</button>


		</form>
	</div>
	<!-- Scriplets -->

	<script>
		function loadRequest() {
			event.preventDefault();
			
			var requestType = document.getElementById("requestType").value;
			
			var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
			var userId=user.id;

			//var request = JSON.parse(localStorage.getItem("REQUEST LIST"));
			//var requestId=request.id;
			
			
			var requestAmount = document.getElementById("requestAmount").value;
			console.log("reqType=>"+requestType);
			console.log("userID=>"+userId);
			console.log("requestAmount=>"+requestAmount);
			var formData = "userId=" + userId
					+ "&requestAmount=" + requestAmount +"&requestId=" + requestType;
			console.log(formData);
			

			var url = "http://localhost:9000/donor/ContributeToFundRequest?" + formData;
			console.log(url);
			   $.get(url).then(function(response) {
			       console.log("success");
			       console.log(response);
			       var msg=response;
			     if(msg!=null) {
			    	 alert("ThankYou for your contribution");
						window.location.href = "?pageName=home.jsp";
			     }
			   },
			   function(response) {
			       console.log("Error");
			       console.log(response);
			        var data = response.responseJSON;
			       if (data != null) {
			           alert(data.message);
			          // window.location.href= "?pageName=ContributeToRequest.jsp";
			       }
							});

		}
		function loadRequestTypes(){
			var url = "http://localhost:9000/donor/listFundRequest";
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