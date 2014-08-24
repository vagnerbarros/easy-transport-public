<%@page import="reclame.entidades.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página de Teste Principal</title>
</head>
<body>
	<%
	Usuario u = (Usuario) session.getAttribute("usuario");
	if(u != null){
		%>
	<h1>
		Bem Vindo(a)
		<%=u.getNome() %></h1>
	<% 
	}
	else{ %>
	<a href="teste_login.jsp">Logar</a>
	<br>
	<a href="teste_cadastrar.jsp">Cadastrar</a>
	<%} %>
</body>
</html>