
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Character</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<h3>Update a character:</h3>

<form action="updateCharacterDB.do" method="POST">
	<input type="text" name="id" value="${character.id}" hidden="true">

	Please select your character's name<input type="text" name="name"/><br><br>

	<label for="class">Please select a Class:</label> <select name="class" id="class">
		<option value="Necromancer">Necromancer</option>
		<option value="Pathfinder">Pathfinder</option>
		<option value="Berserker">Berserker</option>
		<option value="Champion">Champion</option>
		<option value="Trickster">Trickster</option>
		<option value="Inquisitor">Inquisitor</option>
		<option value="Ascendant">Ascendant</option>
	</select><br><br>
	<label for="helmet">Please select a Helmet</label>
		<select name="helmet" id="hemlet">
			<option value="The Baron">The Baron</option>
			<option value="Goldrim">Goldrim</option>
			<option value="The Fledgling">The Fledgling</option>
		</select><br><br>
	 <label for="weapon">Please select a Weapon</label>
	 	<select name="weapon" id="weapon">
			<option value="Lifesprig">Lifesprig</option>
			<option value="Oni-Goroshi">Oni-Goroshi</option>
			<option value="Pledge of Hands">Pledge of Hands</option>
		</select><br><br>
	<label for="bodyArmor">Please select a Body Armor</label>
		<select name="bodyArmor" id="bodyArmor">
			<option value="Kaom's Heart">Kaom's Heart</option>
			<option value="Blunderbore">Blunderbore</option>
			<option value="The Brass Dome">The Brass Dome</option>
		</select><br><br>
	<label for="boots">Please select a pair of Boots</label>
		<select name="boots" id="boots">
			<option value="Seven-league step">Seven-league step</option>
			<option value="Atziri's Step">Atziri's Step</option>
			<option value="Kaom's Roots">Kaom's Roots</option>
		</select><br><br>
	<label for="gloves" id="gloves">Please select a pair of Gloves</label>
		<select name="gloves" id="gloves">
			<option value="Meginord's Vise">Meginord's Vise</option>	
			<option value="Doryani's Fist">Doryani's Fist</option>	
			<option value="Haemophilia">Haemophilia</option>	
		</select><br><br>
	<label for="belt" id="belt">Please select a Belt</label>	
		<select name="belt" id="belt">
			<option value="Mageblood">Mageblood</option>
			<option value="Headhunter">Headhunter</option>
			<option value="Replica Soul Tether">Replica Soul Tether</option>
		</select><br><br>

		<input type="submit" value="Update Character">

</form>
	<a href="home.do">Return to home</a>
	<jsp:include page="../bootstrapFoot.jsp" />

</body>
</html> 