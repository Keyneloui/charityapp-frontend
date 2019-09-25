<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
function loadBooks()
{
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
	<jsp:include page="header.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<h2>Our Request</h2>
	
	<form onsubmit="loadBooks()"></form>
	<div class="view" id="view">
       
    </div>
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				
				<table border="1" class="table table-condensed" id="tbl">
					<thead>
						<tr>
							<th>ID</th>
							<th>RequestType</th>
							<th>RequestAmount</th>
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

	<a href="?pageName=index.jsp">Main Function</a>
	<a href="?pageName=addrequest.jsp">Add Request</a>
	<br />

</body>
</html>