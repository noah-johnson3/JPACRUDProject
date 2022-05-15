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
	<div class="parent">
		Welcome to the Path of Exile Character Builder!

		<main class="container-fluid">

			<form action="showClass.do" method="GET">
				<div class="search child">
					Character Id: <input type="text" name="id" /> <input type="submit"
						value="Show Character" />
				</div>
				<div class="videotext child">What is Path of Exile? Click</div>
				<div class="video child">
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/OlE4f3nx_KE"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
			</form>
			<form action="create.do" method="GET">
				<div class="create child">
					<input type="submit" value="Create new Character" />
				</div>
			</form>

			<form action="list.do" method="GET">
				<div class="show child">
					<input type="submit" value="Show all Characters" />
				</div>
			</form>
			<form action="gallery.do" method="GET">
				<div class="gallery child">
					<input type="submit" value="Gallery" />
				</div>
			</form>
		</main>
	</div>

</body>
</html>