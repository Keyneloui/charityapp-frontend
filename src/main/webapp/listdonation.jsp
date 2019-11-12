<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Donations</title>
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.4.1.min.js"></script>
<script>
function loadRequest()
{
	 var url=server+"/admin/listFundRequest?";
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
		        content += "<td>" + dr.date + "</td>";
		        content += "</tr>";
		    }
		    console.log(content); 
		    
		  
		    
		    document.getElementById("tbody").innerHTML =  content;
		});
}
</script>
</head>
<body style="text-align: center">
	<jsp:include page="adminheader.jsp"></jsp:include>
	<br />
	<br />
	<br />


	<form onsubmit="loadRequest()"></form>
	<div class="view" id="view"></div>
	<div class="container"style="
    opacity: 0.9;
    background-color: black;
    color: white;">
		<h2>Fund Request</h2>
		<div class="row">
			<div class="col">
				<div align="left">

					<table border="1" class="table table-condensed  text-light" id="tbl">
						<thead>
							<tr>
								<th>ID</th>
								<th>Type</th>
								<th>Amount(Rs)</th>
								<th>Date</th>
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
		loadRequest();
</script>
</body>
</html>