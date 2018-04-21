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
</body>
</html>