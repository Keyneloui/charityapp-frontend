<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="text-align: center" class="img">
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
