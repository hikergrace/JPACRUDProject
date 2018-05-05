<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add A Tune</title>

<!-- styles and fonts -->
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous">
		<link href="css/style.css" rel="stylesheet" >
		<link href="https://fonts.googleapis.com/css?family=Nothing+You+Could+Do|Raleway" rel="stylesheet" type="text/css">
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
	
	</head>
	<body>
	
	<div class="container-fluid">
	
		<div class="row full">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
			<br/><br/>
				<h4 align="center" class="linkNoDec"><a href="tunes.do">Welcome to the Denver Pub Sessions Tune Library</a></h4>
			<br/><br/>
			</div>
			<div class="col-sm-1"></div>
			</div>
		<p><strong>Add a tune</strong></p>
		<p>Tune name, style, and key are required fields. </p>
		<form action="addTune.do" method="POST">
			Tune name: <input type="text" name="name" required><br/>
			Style (jig, reel, etc): <input type="text" name="rhythm" required><br/>
			Key: <input type="text" name="key" required><br/>
			Origin: <input type="text" name="provenance"><br/>
			<!-- Sound file (session speed): <input type="text" name="soundFast"><br/>
			Sound file (learning speed): <input type="text" name="soundSlow"><br/>-->
			Other names: <input type="text" name="otherNames"><br/>
			Notes: <input type="text" name="notes"><br/> 
			<input type="submit" value="Submit">
		</form>
		
<!-- JS files for Bootstrap -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>	
	</div>
</body>
</html>