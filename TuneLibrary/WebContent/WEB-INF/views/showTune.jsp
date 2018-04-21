<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Tune Info</title>
</head>
<body>

	
	<h2>${tune.name}</h2>
	<ul>
		<li>${tune.rhythm}</li>
		<li>${tune.key}</li>
		<li>${tune.provenance}</li>
		<li><a href="getIndex.do = ${tune.soundFast}">Play sound file</a></li>
	
	</ul> 
		
	<form action="delete.do" method="post">
		<input type="hidden" value="${tune.id}" name="id">
		<input type="submit" value="Delete">
	</form>
		
	<p>Update this tune:</p>
	<form action="updateTune.do" method="POST">
		<input type="hidden" value="${tune.id}" name="id">
		Name: <input type="text" name="name"><br/>
		Rhythm: <input type="text" name="rhythm"><br/>
		Key: <input type="text" name="key"><br/>
		Where from: <input type="text" name="provenance"><br/>
		Sound file: <input type="text" name="soundFast"><br/>
		Sound file: <input type="text" name="soundSlow"><br/>
		AKA: <input type="text" name="otherNames"><br/>
		Notes: <input type="text" name="notes"><br/>
	<input type="submit" value="Submit">
	</form>
	
	
</body>
</html>