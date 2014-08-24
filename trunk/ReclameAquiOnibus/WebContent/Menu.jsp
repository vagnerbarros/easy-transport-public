<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="reclame.entidades.Usuario"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Untitled Page</title>
<meta name="generator"
	content="WYSIWYG Web Builder 8 - http://www.wysiwygwebbuilder.com">
<style type="text/css">
html,body {
	height: 100%;
}

div#space {
	width: 1px;
	height: 50%;
	margin-bottom: -545px;
	float: left
}

div#container {
	width: 1529px;
	height: 1091px;
	margin: 0 auto;
	position: relative;
	clear: left;
}

body {
	margin: 0;
	padding: 0;
	background-color: #FFFFFF;
	color: #000000;
}
</style>
<style type="text/css">
a {
	color: #C8D7EB;
	text-decoration: underline;
}

a:visited {
	color: #C8D7EB;
}

a:active {
	color: #C8D7EB;
}

a:hover {
	color: #376BAD;
	text-decoration: underline;
}
</style>
<style type="text/css">
#Line1 {
	color: #FFFFFF;
	background-color: #FFFFFF;
	border-width: 0px;
}

#Line6 {
	color: #FFD700;
	background-color: #FFD700;
	border-width: 0px;
}

#Line2 {
	color: #FFD700;
	background-color: #FFD700;
	border-width: 0px;
}

#wb_Text1 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text1 div {
	text-align: left;
}

#wb_Text2 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text2 div {
	text-align: left;
}

#wb_Text3 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text3 div {
	text-align: left;
}

#wb_Text4 {
	background-color: transparent;
	border: 0px #FF0000 solid;
	padding: 0;
}

#wb_Text4 div {
	text-align: left;
}

#Image1 {
	border: 0px #000000 solid;
}
</style>
</head>
<body>
	<%
	Usuario usuario = (Usuario) session.getAttribute("usuario");
%>
	<div id="space">
		<br>
	</div>
	<div id="container">
		<div id="Html1"
			style="position: absolute; left: 1px; top: 1px; width: 1499px; height: 765px; z-index: 0">
		</div>
		<hr id="Line1"
			style="margin: 0; padding: 0; position: absolute; left: 256px; top: 2px; width: 989px; height: 763px; z-index: 1;">
		<hr id="Line6"
			style="margin: 0; padding: 0; position: absolute; left: 2px; top: 49px; width: 1498px; height: 4px; z-index: 2;">
		<hr id="Line2"
			style="margin: 0; padding: 0; position: absolute; left: 2px; top: 172px; width: 1498px; height: 4px; z-index: 3;">
		<button id="AdvancedButton1" type="button"
			onclick="window.location='EfetuarReclamacao.jsp'" name="" value=""
			style="position: absolute; left: 283px; top: 240px; width: 250px; height: 30px; z-index: 4;">
			<div style="text-align: left">
				<span style="color: #000000; font-family: Arial; font-size: 20px"><b>
						Efetuar uma reclamação</b></span>
			</div>
		</button>
		<button id="AdvancedButton2" type="button"
			onclick="window.location='LocalOnibus.jsp'" name="" value=""
			style="position: absolute; left: 283px; top: 378px; width: 275px; height: 28px; z-index: 5;">
			<div style="text-align: left">
				<span style="color: #000000; font-family: Arial; font-size: 20px"><b>
						Veja onde está seu Ônibus</b></span>
			</div>
		</button>
		<button id="AdvancedButton3" type="button"
			onclick="window.location='Feed.jsp'" name="" value=""
			style="position: absolute; left: 283px; top: 530px; width: 212px; height: 27px; z-index: 6;">
			<div style="text-align: left">
				<span style="color: #000000; font-family: Arial; font-size: 20px"><b>
						Feed de Reclamação</b></span>
			</div>
		</button>
		<div id="wb_Text1"
			style="position: absolute; left: 540px; top: 246px; width: 317px; height: 19px; z-index: 7;">
			<span style="color: #000000; font-family: Arial; font-size: 16px;"><strong>Clique
					aqui para efetuar uma reclamação</strong></span>
		</div>
		<div id="wb_Text2"
			style="position: absolute; left: 565px; top: 385px; width: 324px; height: 19px; z-index: 8;">
			<span style="color: #000000; font-family: Arial; font-size: 16px;"><strong>Clique
					aqui para ver onde está seu ônibus</strong></span>
		</div>
		<div id="wb_Text3"
			style="position: absolute; left: 503px; top: 533px; width: 373px; height: 19px; z-index: 9;">
			<span style="color: #000000; font-family: Arial; font-size: 16px;"><strong>Clique
					aqui para acompanhar suas reclamações</strong></span>
		</div>
		<div id="wb_Text4"
			style="position: absolute; left: 1198px; top: 16px; width: 31px; height: 16px; z-index: 10;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Bem
					Vindo(a) <br /><%=usuario.getNome() %><a href="Login.jsp"><u>Sair</u></a>
			</strong></span>
		</div>
		<div id="wb_Image1"
			style="position: absolute; left: 406px; top: 57px; width: 687px; height: 112px; z-index: 11; padding: 0;">
			<img src="images/logo.jpg" id="Image1" alt="" border="0"
				style="width: 687px; height: 112px;">
		</div>
	</div>
</body>
</html>