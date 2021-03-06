<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<title>CAFE</title>
</head>
<body class="theme-${ theme }">
	<div class="background" id="home">
		<div class="overlay">
		<%@include file="partials/header.jsp" %>
			<h2 id="greeting">Hello ${profile.firstname} ${profile.lastname} 
								<br> Welcome to the javaBean!</h2>
			<h1 id="register"><a href="/register-user">Register</a></h1>
			<h1 id="shop"><a href="/javaBeanShop">Shop</a></h1>
		</div>
		<div class="profile"><a href="/edit-profile">Edit Profile</a>
	</div>
</body>
</html>