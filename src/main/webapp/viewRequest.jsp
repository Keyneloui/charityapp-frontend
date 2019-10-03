<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Requests</title>
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.4.1.min.js"></script>
<script>
function loadBooks()
{
	//http://localhost:8080/charity/AddRequest?requestType=a&requestId=5&requestAmount=100
	//$.post ... url, form data , response ( success/failure)
	var url = "http://localhost:8080/mavenwebb/ListRequests";
		$.getJSON(url, function(response){
		    var list = response;
		    document.getElementById("tbody").innerHTML = "";
		    var content = "";
		    for(let dr of list){
		        console.log(list);
		        content += "<tr>";
		        content += "<td>" + dr.id + "</td>";
		        content += "<td>" + dr.requestType + "</td>";
		        content += "<td>" + dr.requestAmount + "</td>";
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
	<h2>Fund Requests</h2>
		<div class="row">
			<div class="col">
				<div align="left">

					<table border="1" class="table table-condensed" id="tbl">
						<thead>
							<tr>
								<th>ID</th>
								<th>Type</th>
								<th>Amount</th>
							</tr>
						</thead>
						<tbody id="tbody">

						</tbody>
					</table>
				</div>
			</div>
		</div>
		<script>
loadBooks();
</script>
</body>
</html>