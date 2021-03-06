<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
	<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>Tune Library</title>
	
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
				<h4 align="center">Welcome to the Denver Pub Sessions Tune Library</h4>
			<br/><br/>
			</div>
			<div class="col-sm-1"></div>
			</div>
		
		<br/>
		<p>Traditional music sessions (seisiúns) go way back in music history with humble beginnings around kitchen tables, on front porches, and in pubs. 
		They are informal get-togethers of musicians who sit down and play for the love of the music. Traditional sessions are not performances and 
		nothing is rehearsed. We just share tunes, songs, and stories for the fun of it. We love the stories behind the tunes and mighty craic!</p>
		<p>Below are the current tunes in the library. The library is a work in progress, but if you don't see your favorite tune, you are welcome 
		to add it!<br/>
		<button type="button" class="btn btn-default"><a href="addATune.do">Add a tune</a></button>
		<br/>
		<br/>		
		 <!-- <img src="images/aubreybuddha.jpg" alt="cat">  -->
		
		<div class="row">
			<div class="tuneList">
				<p>Click on a tune title to see more information on the tune.</p>
				<p>
				<c:forEach items="${tuneList}" var="tune">
				<a href="getTune.do?id=${tune.id}"  target="_new">${tune.name}</a><br/>
				</c:forEach>
				</p> 
			</div>
			
			<div class="setList">
			<p>Some of our common sets:</p>
			<ul>
				<li>Haste to the Wedding, Pull the Knife and Stick it Again, Buried My Wife and Danced on Her Grave</li>
				<li>Kittie Lie Over, Jim Ward's, Out on the Ocean</li>
				<li>Humours of Glendart, Have a Drink With Me (the Harry Potter Set)</li>
				<li>The Torn Jacket, Come West Along the Road</li>
				<li>Whisky Before Breakfast, Over the Waterfall, Liberty</li>
				<li>Fig for a Kiss, Sargent Cahill's, Miller's Maggot</li>
				<li>Scarce O' Tatties, Dusty Windowsills, Black Rogue</li>
				<li>Sporting Pitchfork, Ramblin Pitchfork, Behind the Haystack</li>
				<li>Cold Frosty Morning, Athole Highlanders</li>
				<li>Angeline the Baker (2x easy speed, 2x breakdown)</li>
				
			</ul>
			</div>
		</div>
	</div>
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
	
	</body>
</html>