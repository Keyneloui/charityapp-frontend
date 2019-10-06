<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor List</title>
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.4.1.min.js"></script>
<script>

function loadBooks()
{
	var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
	var userId=user.id;
	var formData = "&userId=" + userId;

console.log(formData);

	var url = "http://localhost:8080/mavenwebb/Mydonation?"+ formData;;
		$.getJSON(url, function(response){
		    var list = response;
		    document.getElementById("tbody").innerHTML = "";
		    var content = "";
		    for(let dr of list){
		        console.log(list);
		        content += "<tr>";
		      
		       
		        content += "<td>" + dr.requestType + "</td>";
		        content += "<td>" + dr.amount + "</td>";
		        content += "</tr>";
		    }
		    console.log(content); 
		    
		    document.getElementById("tbody").innerHTML =  content;
		});
}
</script>

</head>
<body style="text-align: center">
	<jsp:include page="donorheader.jsp"></jsp:include>
	<br />
	<br />
	<br />

	<form onsubmit="loadBooks()"></form>
	<div class="container">
		<h2>Donor List</h2>
		<div class="row">
			<div class="col">
				<div align="left">

					<table border="1" class="table table-condensed" id="tbl">

						<thead>
							<tr>


								<th>Request Type</th>
								<th>Amount Funded</th>
							</tr>
						</thead>
						<tbody id="tbody">

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
loadBooks();
</script>


	<br />

</body>
</html>