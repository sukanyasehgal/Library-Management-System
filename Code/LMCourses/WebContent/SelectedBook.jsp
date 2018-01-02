<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Management System</title>
<link href="css/Style.css" rel="stylesheet">
<script src="js/Validations.js">
	
</script>
<script src="js/IssueForm.js">
	
</script>

<script src="js/LoginForm.js">
	
</script>
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
			<form action="FilterBooksServlet" name="FilterForm"
				onsubmit="return checkboxStatus()" method="post">
				<br> <input style="font-size: 20px; font-family: 'Raleway', sans-serif;" type="checkbox"
					name="book" value="Regular"><b style="font-family: 'Raleway', sans-serif;">Programming</b><br> <br>
				<input style="font-size: 20px;" type="checkbox" name="book"
					value="Spotlight"><b style="font-family: 'Raleway', sans-serif;">Multimedia</b><br> <br> <input
					style="font-size: 20px;" type="checkbox" name="book"
					value="Pre-Conference"><b style="font-family: 'Raleway', sans-serif;">Computer Science</b><br> <br>
				<input style="cursor: pointer" type="submit" value="Filter"
					id="filter">
			</form>

		</div>

		<div
			style="background-color: #eee; height: 832px; width: 750px; float: left; text-align: center; border: 1px ridge; border-color: #C0C0C0;">
			<br>
			<h2
				style="color: #606060; text-align: left; padding: 0px 0px 0px 22px; font-family: 'Raleway', sans-serif;">${selectedBook.getName()}
			</h2>

			<img
				style="border-width: 2px; border-style: outset; border-color: #778899; text-align: center;"
				src="images\<c:out value="${selectedBook.getImage()}"/>"
				title="
					${selectedBook.getImage()}" height="720px"
				width="700px">


		</div>

		<div
			style="height: 832px; width: 283px; float: left; padding: 0px 0px 0px 10px; border: 1px ridge; border-color: #C0C0C0;">
			<br>
			<h3 style="color: #606060">
				<u>Details-</u>
			</h3>

			<br>
			<hr>
			<b>Category: </b>${selectedBook.getCategory()} <br>
			<hr>
			<br> <b>Book Code: </b>${selectedBook.getCode()} <br>
			<hr>
			<br> <b>Author: </b>${selectedBook.getAuthor()} <br>
			<hr>
			<h5 style="color: #606060">
				<button id="register" onclick="form_show()">Issue Book</button>

				<br >(Click <u>Issue Book</u> to issue this book)
			</h5>
		</div>

		<%@ include file="IssueForm.html"%>
		
		<div style="background-color: #FFA500; clear: both">
			<center>Copyright © 2016 Aricent Technologies</center>
		</div>

	</div>
</body>
</html>




