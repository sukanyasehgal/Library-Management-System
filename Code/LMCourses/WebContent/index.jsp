<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Management System</title>

<script src="js/Validations.js">
	
</script>
<script src="js/LoginForm.js">
	
</script>
<link href="css/Style.css" rel="stylesheet">
</head>
<body>
	<div style="width: 100%; padding: 0px; margin: 0px">
		<div
			style="background-color: #FFA500; width: 100%; height: 40px; padding: 0px 0px 10px 0px;">
			<h1 style="text-align: center; font-family: 'Raleway', sans-serif;">
				Library Management System
				<button id="login" onclick="loginForm_show()">Admin Login</button>
			</h1>
		</div>

		<%@ include file="LoginForm.html"%>

		<div
			style="background-color: #aaa; height: 834px; width: 190px; float: left; padding: 0px 0px 0px 10px;">
			<div style="font-size: 20px;">
				<br>(Select to filter)
			</div>
			<form action="FilterBooksServlet" name="FilterForm" method="post" onsubmit="return checkboxStatus()" >
				<br> <input style="font-size: 20px;" type="checkbox"
					name="book" value="Programming"><b
					style="font-family: 'Raleway', sans-serif;">Programming</b><br>
				<br> <input style="font-size: 20px;" type="checkbox"
					name="book" value="Multimedia"><b
					style="font-family: 'Raleway', sans-serif;">Multimedia</b><br>
				<br> <input style="font-size: 20px;" type="checkbox"
					name="book" value="Computer Science"><b
					style="font-family: 'Raleway', sans-serif;">Computer Science</b><br>
				<br> <input style="cursor: pointer" type="submit"
					value="Filter" id="filter">
			</form>
		</div>

		<div
			style="background-color: #eee; height: 832px; width: 1035px; float: left; padding: 0px 0px 0px 10px; border: 1px ridge; border-color: #C0C0C0;">
			<br>

			<h3 style="color: #606060; font-family: 'Raleway', sans-serif;">
				<br> Welcome to Library Management System.<br>Here you can
				view all the books available in the library.<br>(Please select
				the desired book type on the left pane and click the "Filter"
				button)
			</h3>

		</div>

		<div style="background-color: #FFA500; clear: both">
			<center>Copyright © 2016 Aricent Technologies</center>
		</div>
	</div>
</body>
</html>


