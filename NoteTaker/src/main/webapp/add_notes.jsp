<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class= "container">
  		<%@include file="navbar.jsp" %>
  		<br>
  		<h1> Please fill your note detail</h1>
  		
  		
  		<!-- This is add from -->
  		
  		<form action = "SaveNoteServlet1" method ="post">
  			<div class="mb-3">
    			<label for="title">Note Title</label>
    			<input name = "title"
    				type="text" 
    				class="form-control" 
    				id="title" 
    				aria-describedby="emailHelp" 
    				placeholder = "Enter here" required/>
    
  			</div>
  			<div class="mb-3">
    			<label for="content" class="form-label">Note Content</label>
    			<textarea name = "content"
    			 	id = "content" 
    			 	placeholder = "Enter your content here" 
    			 	class="form-control" 
    			 	style = "height:300px" required></textarea>
			</div>
			<div class = "container text-center">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
  
		</form>
  	</div>

</body>
</html>