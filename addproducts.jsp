
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.HashSet" %>
<%@page import="java.util.Set" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<h3>Product Suggestion</h3>
	<%!Set<String> products = new HashSet<>(); %>
	<%!String Suggest = ""; %>
	<form action=" "  method="post">
		<label for="product">Product Name</label><br>
		<input type="text" name="txtproduct">
		<input type="submit" value="Print">	<br>
		<hr>
		
		<label for="suggestion">Suggestion</label>
		
		</form>
	<% String suggest =request.getParameter("txtproduct");
	if(suggest != null && !suggest.equals("")){ 
		if(!products.contains(suggest)){
			products.add(suggest); 
			Suggest = products.toString(); 
			application.setAttribute("Products",Suggest); 
		}
	if(application.getAttribute("Products")!= null){
		Suggest = application.getAttribute("Products").toString();
		}
	}
	%>
	<%=Suggest %> 
	
</body>
</html>

