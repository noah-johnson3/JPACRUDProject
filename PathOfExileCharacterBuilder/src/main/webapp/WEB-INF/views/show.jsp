<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../bootstrapHead.jsp" />
<meta charset="UTF-8">
<title>Class Details for Character id: ${character.id}</title>

</head>
<body>
	<div>
		<c:choose>
			<c:when test="${empty character }">Invalid Character</c:when>
			<c:otherwise>
				<h1>Character's Name: ${character.name}</h1>
				<h1>Characer's Class: ${character.characterClass }</h1>
				<h2>Character's Helmet: ${character.helmet}</h2>
				<h2>Character's Weapon: ${character.weapon}</h2>
				<h2>Character's Body Armor: ${character.bodyArmor}</h2>
				<h2>Character's Boots: ${character.boots}</h2>
				<h2>Character's Gloves: ${character.gloves}</h2>
				<h2>Character's Belt: ${character.belt}</h2>
			</c:otherwise>
		</c:choose>
	</div>
	<a href="home.do">Return to home</a>

	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>