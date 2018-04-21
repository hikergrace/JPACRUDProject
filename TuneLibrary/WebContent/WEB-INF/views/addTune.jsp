<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add A Tune</title>
</head>
<body>

<p>Add a tune</p>
<form action="addTune.do" method="POST">
	Tune name: <input type="text" name="name"><br/>
	Rhythm (jig, reel, etc): <input type="text" name="rhythm"><br/>
	Key: <input type="text" name="key"><br/>
	Where from: <input type="text" name="provenance"><br/>
	Sound file (session speed): <input type="text" name="soundFast"><br/>
	Sound file (learning speed): <input type="text" name="soundSlow"><br/>
	Other names: <input type="text" name="otherNames"><br/>
	Notes: <input type="text" name="notes"><br/>
	<input type="submit" value="Submit">
</form>

</body>
</html>