<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/alert.css">


<body>

		
		
	<div class="container">
	<h2>Admin Login</h2></font>
	<form onsubmit="adminLogin()">
		<label>Email:</label> <input type="email" name="email_id"
			id="email_id" placeholder="Enter Email" required autofocus /> <br/><br />
		<label>Password:</label> <input type="password" name="password"
			id="password" placeholder="Enter Password" required /> <br /><br/> <input
			type="submit" value="Submit" class="btn btn-success">&nbsp;
		<button type="reset" class="btn btn-danger" value="clear">clear
		</button>
		<br />
	</form>
	</div>
	
		
		 <div class="alert">
			<div style="display:none;" id="errorMsg" class="alert alert-danger alert-dismissible fade show" role="alert">
			  		<i id="messageBody"></i>
			  <button type="button" data-dismiss="alert" >
			    	<span class="closebtn">&times;</span>
			  </button>
			</div>
		</div>
		</div> 
		<!-- <div class="alert ">
  <span class="closebtn">&times;</span>  
<div style="display:none;" id="errorMsg" class="alert alert-danger alert-dismissible fade show">
			  		<i id="messageBody"></i> <button type="button" class="close" data-dismiss="alert">
			    	<span aria-hidden="true">&times;</span>
			  </button>
</div> -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</body>

<script>
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>

<script>
function adminLogin() {
	event.preventDefault();
	// step 1: Get form values
	let userName = document.getElementById("email_id").value;
	let passWord = document.getElementById("password").value;
	
	// prepare formdata
	let formData = "email_id="+userName + "&password="+passWord;	
	//send ajax request
	var url = "http://localhost:8080/mavenwebb/AdminLogin?"+formData ;
	var login = $.ajax(url);
	
	login.then(function (response) {
		console.log(response.errorMessage);
		
		var msg = JSON.parse(response).errorMessage;
		console.log(msg);
		if(msg != undefined){
			document.querySelector("#messageBody").innerHTML = "<font color='red'>"+msg+"</font>";  
			$('#errorMsg').css({'display':'block'});
		}else{
			document.querySelector("#messageBody").innerHTML = "<font color='green'>You are successfully Logged in.</font>";
			$('#errorMsg').css({'display':'block'});
			window.location.replace('?pageName=index.jsp')
		}
    });
}
</script>


</html>