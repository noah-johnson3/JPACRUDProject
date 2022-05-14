<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			Class Id: <input type="text" name="characterId" /> <input
				type="submit" value="Show Class" />

		</form>
		<form action="createCharacter.do" method="GET">
		<a href="createCharacter.do">Create New Character</a>
		
		</form>
	
	</main>
</body>
</html>