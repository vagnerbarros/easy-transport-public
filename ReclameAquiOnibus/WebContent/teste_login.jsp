<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teste de Login</title>
</head>
<body>

	<form action="controlador" name="form_login" method="POST">
		<input type="hidden" name="acao" value="logar" /> <label>E-Mail:</label>
		<input type="text" name="email" /> <br> <label>Senha:</label> <input
			type="password" name="senha" /> <input type="submit" value="Logar">
	</form>
</body>
</html>