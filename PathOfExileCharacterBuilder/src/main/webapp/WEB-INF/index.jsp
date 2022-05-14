<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Path Of Exile Character Builder</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<h1>Welcome to the Path of Exile Character Builder!</h1>

	<main class="container-fluid">

		<form action="showClass.do" method="GET">
			Character Id: <input type="text" name="id" /> <input type="submit"
				value="Show Class" />

		</form>
		<form action="create.do" method="GET">
			<a href="create.do">Create New Character</a>

		</form>
		<form action="list.do" method="GET">
			<a href="list.do" method="GET">Show all Characters</a>

		</form>

	</main>
</body>
</html>