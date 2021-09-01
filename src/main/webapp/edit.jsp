<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<%@include file="all_js_css.jsp"%>
</head>

<body>

	<div class="container">
		<%@include file="navbar.jsp"%>


		<h1>Edit your note :</h1>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">

			<div class="form-group">
			    
                <label class="form-label">Previous Note Id : </label>
				<input value=" <%=note.getId()%> " type="text" name="noteId"/>

			</div>

			<div class="form-group">



				<label for="title" class="form-label">Note Title</label> 
				<input
					name="title" required type="text" class="form-control" id="title"
					placeholder="Enter here.." aria-describedby="emailHelp"
					value="<%=note.getTitle()%>">
			</div>

			<div class="form-group">
				<label for="content" class="form-label">Note Content</label>
				<textarea required id="content" name="content" class="form-control"
					placeholder="enter your content  here.." style="height: 300px"><%=note.getContent()%>
				</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">SUBMIT UPDATE</button>
			</div>

		</form>
</body>
</html>