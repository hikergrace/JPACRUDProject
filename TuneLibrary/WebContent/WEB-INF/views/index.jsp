<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tune Library</title>
</head>
<body>
<p>Howdy! Welcome to the Tune Library</p>

		<a href="addATune.do">Add a tune</a>
		<p>Click on a title to see more information on the film.</p>
		<c:forEach items="${tuneList}" var="tune">
			<p><a href="getTune.do?id=${tune.id}"  target="_new">${tune.name}</a></p> 
		
	
			
		</c:forEach>
	


</body>
</html>