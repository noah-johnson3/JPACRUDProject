<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List all Characters</title>
<jsp:include page="../bootstrapHead.jsp" />

</head>
<body>
	<main class="container-fluid">
		<form action="show.do" method="GET"></form>
		<table>
			<tbody>
				<c:forEach var="character" items="${charList}">
					<tr>
						<td>${character.id}</td>
						<td><a href="showClass.do?id=${character.id}">${character.name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<form action="update.do" method="GET">
			Character ID: <input type="text" name="id" /> <input
				type="submit" value="Edit Character" /> <input type="submit" value="Delete Character" formaction="delete.do" />
				
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>