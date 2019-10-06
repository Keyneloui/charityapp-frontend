<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/alert.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="alert failure">
		<span class="closebtn">&times;</span> <strong>Danger!</strong>
		Indicates a dangerous or potentially negative action.
	</div>
	<div class="alert success">
		<span class="closebtn">&times;</span> <strong id="errorMsg"></strong>
		<i id="messageBody"></i>
	</div>

	<div class="alert info">
		<span class="closebtn">&times;</span> <strong>Info!</strong> Indicates
		a neutral informative change or action.
	</div>

	<div class="alert warning">
		<span class="closebtn">&times;</span> <strong>Warning!</strong>
		Indicates a warning that might need attention.
	</div>

	<script>
		var close = document.getElementsByClassName("closebtn");
		var i;

		for (i = 0; i < close.length; i++) {
			close[i].onclick = function() {
				var div = this.parentElement;
				div.style.opacity = "0";
				setTimeout(function() {
					div.style.display = "none";
				}, 600);
			}
		}
	</script>
</body>
</html>