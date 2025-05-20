<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Note Taker : Home page</title>
    <%@include file="all_js_css.jsp" %>
  </head>
  
  <body>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
  </body>
  
  	<div class= "container">
  		<%@include file="navbar.jsp" %>
  		<br>
  		<div class="card py-5">
  			<img class="img-fluid mx-auto" style ="max-width:400px" src="img/note.png" alt="Note Image">
  			<h1 class="text-primary text-uppercase text-center mt-3">Start Taking your notes</h1>
  			<div class="container text-center">
  				<button class="btn btn-outline-primary text-center">Start here</button>
  			</div>
 
  		</div>
  	</div>
</html>
