<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Novo Usuário</title>
</head>
<body>
	<form action="controlador" method="POST" name="form_cadastrar">
		<input type="hidden" name="acao" value="cadastrar" /> <label>Nome:
		</label> <input name="nome" type="text" /><br> <label>E-Mail: </label> <input
			name="email" type="text" /><br> <label>Senha: </label> <input
			name="senha" type="password" /><br> <input type="submit"
			value="Cadastrar" />
	</form>

</body>
</html>