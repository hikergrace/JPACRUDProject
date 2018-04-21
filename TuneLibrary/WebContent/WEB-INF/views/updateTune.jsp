<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update a Tune</title>
</head>
<body>

<p>Update a tune:</p>
<form action="updateTune.do" method="POST">
	Tune name: <input type="text" name="name">
	Rhythm (jig, reel, etc): <input type="text" name="rhythm">
	Key: <input type="text" name="key">
	Where from: <input type="text" name="provenance">
	Sound file (session speed): <input type="text" name="soundFast">
	Sound file (learning speed): <input type="text" name="soundSlow">
	Other names: <input type="text" name="otherNames">
	Notes: <input type="text" name="notes">
	<input type="submit" value="Submit">

</form>



</body>
</html>