<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Auth Demo</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<%@include file="partials/header.jsp" %>
	<h1>Psssssst...</h1>
	
	<p>If you made it here, you must be logged in. Congratulations here's your reward...</p>
	
	<p class="secret"><%=
		Arrays.asList("Chuck Norris can kill two stones with one bird.",
				"Giraffes were created when Chuck Norris uppercutted a horse.",
				"Chuck Norris beat the sun in a staring contest.",
				"Chuck Norris is the reason Waldo is hiding.",
				"Chuck Norris makes onions cry.",
				"Chuck Norris can rub two pieces of fire together and make wood.")
		.get(new Random().nextInt(6))
	%></p>
	
	<h3>My Words</h3>
	<p class="words">
		<c:forEach var="word" items="${words}">
			<span>${ word.text }<a href="/remove-word?word=${word.id}">&times;</a></span>
		</c:forEach>
		<form action="/add-word" autocomplete="off">
			<input name="word" autofocus/>
			<button>Add</button>
		</form>
	</p>
</body>
</html>