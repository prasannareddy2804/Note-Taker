<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="jakarta.persistence.Query"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.entities.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes: Note Taker</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body >
	<div class= "container">
  		<%@include file="navbar.jsp" %>
  		<br>
  		<h1 class = "text-uppercase">All Notes:</h1>
  	
  	
  	<div class = "row">
  		<div class = "col-12">
  			<%
  			Session s = FactoryProvider.getFactory().openSession();
  			Query q = s.createQuery("FROM Note");
  			List<Note> list = q.getResultList();
  			//List<Note> list = q.list();
  			// to print each note
  			for(Note note:list){
  			%>
  			<div class="card mt-3 d-flex container-fluid ">
  				<img class="card-img-top pl-4 pt-4 m-4 text-center mx-auto" style="max-width:80px;" src="img/note.png" alt = "Card image cap"/>
  				<div class="card-body px-5">
    				<h5 class="card-title"><%=note.getTitle() %></h5>
    				<p class="card-text"><%= note.getContent() %></p>
    				<p><b class="text-primary"><%= note.getAddedDate() %></b></p>
    				<div class="container text-center mt-2">
    					<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    					<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
    				</div>
  				</div>
			</div>
  			<%
  				}
  		  	s.close();	
  			%>
  			
  	
  		</div>
  	</div>
  </div>	
  	

</body>
</html>