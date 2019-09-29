<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Charity</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="text-align: center"class="img">


	<jsp:include page="header.jsp"></jsp:include>
	<br />
	<br />
	<br />



	<%
		String pageName = request.getParameter("pageName");

		if (pageName == null || "".equals(pageName)) {
			pageName = "hello.jsp";
		}
		// out.println(pageName);
	%>

	<jsp:include page="<%=pageName%>"></jsp:include>



</body>

</html>