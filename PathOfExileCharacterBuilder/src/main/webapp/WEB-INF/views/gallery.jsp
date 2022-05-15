<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Path of Exile Gallery</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
	<form action="home.do" method="GET">
		<div class="home">
			<input type="submit" value="Home" />
		</div>
	</form>
<div class="availableclasses">Available Classes</div>
	<div class="necromancer" >Necromancer</div>
	<div class="pathfinder">Pathfinder</div>
	<div class="berserker">Berserker</div>
	<div class="champion">Champion</div>
	<div class="trickster">Trickster</div>
	<div class="inquisitor">Inquisitor</div>
	<div class="helmets">Available Helmets</div>
	<div class="thebaron">The Baron</div>
	<div class="goldrim">Goldrim</div>
	<div class="thefledgling">The Fledgling</div>
	
	 <div class="wepaons">Available Weapons</div>
	<div class="lifesprig">Lifesprig</div>
	<div class="onigoroshi">Oni-Goroshi</div>
	<div class="pledgeofhands">Pledge Of Hands</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>