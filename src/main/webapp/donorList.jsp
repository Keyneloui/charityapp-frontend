<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor List</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/Counter.css">
<script src="js/jquery-3.4.1.min.js"></script>
<script>

function loadBooks()
{
	var url = "http://localhost:9000/admin/listDonorContribution";
		$.getJSON(url, function(response){
		    var list = response;
		    document.getElementById("tbody").innerHTML = "";
		    var content = "";
		    for(let dr of list){
		        console.log(list);
		        content += "<tr>";
		        content += "<td></td>"
		        content += "<td>" + dr.donor.name + "</td>";
		        content +="<td>"  + dr.donor.email +"</td>";
		        content += "<td>" + dr.request.requestType + "</td>";
		        content += "<td>" + dr.request.requestAmount + "</td>";
		        content += "<td>" + dr.amountFunded + "</td>";
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

	<form onsubmit="loadBooks()"></form>
	<div class="container"style="
    opacity: 0.9;
    background-color: black;
    color: white;">
		<h2>Donor Donation Details</h2>
		<div class="row">
			<div class="col">
				<div align="left">

					<table border="1" class="table table-condensed text-light" id="tbl">

						<thead>
							<tr>
                                <th>S.No</th>
								<th>Name</th>
								<th>Email</th>
								<th>Fund Request</th>
								<th>Target Amount</th>
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