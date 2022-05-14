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
		<div class="child-one child">
			Character Id: <input type="text" name="id" /> <input type="submit"
				value="Show Character" />
		</div>

		</form>
		<form action="create.do" method="GET">
				<div class="child-two child">
					<input type="submit" value="Create new Character" />
				</div>

			</form>
		<form action="list.do" method="GET">
		<div class="child-three child">
			<input type="submit" value="Show all Characters" />
		</div>

		</form>
</div>

	</main>
</body>
</html>