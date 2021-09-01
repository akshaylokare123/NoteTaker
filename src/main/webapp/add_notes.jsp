<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>

<%@include file="all_js_css.jsp"%>


</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		
		<h1 class="text-uppercase text-secondary ">Please Fill Your Notes..</h1>
		<br>
 
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title" class="form-label">Note Title</label> 
				<input
				    name="title"
					required type="text" class="form-control" id="title"
					placeholder="Enter here.." aria-describedby="emailHelp">
			</div>

			<div class="form-group">
				<label for="content" class="form-label">Note Content</label>
				<textarea 
				required id="content" 
				name="content"
				  		class="form-control" 
				  		placeholder="enter your content  here.."
					    style="height:300px">
				</textarea>
			</div>

            <div class="container text-center">
				<button type="submit" class="btn btn-primary">SUBMIT</button>
			</div>
						
		</form>


	</div>

</body>
</html>