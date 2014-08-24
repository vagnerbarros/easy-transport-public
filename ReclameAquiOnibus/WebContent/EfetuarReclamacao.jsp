<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="reclame.entidades.Empresa"%>
<%@page import="java.util.List"%>
<%@page import="reclame.fachada.Fachada"%>
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
	margin-bottom: -386px;
	float: left
}

div#container {
	width: 1518px;
	height: 773px;
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

.CustomStyle {
	font-family: "Courier New";
	font-size: 16px;
	font-weight: bold;
	font-style: normal;
	text-decoration: none;
	color: #000080;
}
</style>
<style type="text/css">
#Line1 {
	color: #FFFFFF;
	background-color: #FFFFFF;
	border-width: 0px;
}

#Line2 {
	color: #FFD700;
	background-color: #FFD700;
	border-width: 0px;
}

#Line6 {
	color: #FFD700;
	background-color: #FFD700;
	border-width: 0px;
}

#wb_Text4 {
	background-color: transparent;
	border: 0px #FF0000 solid;
	padding: 0;
}

#wb_Text4 div {
	text-align: left;
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

#Combobox1 {
	border: 1px #C0C0C0 solid;
	background-color: #FFFFFF;
	color: #000000;
	font-family: Arial;
	font-size: 13px;
}

#Combobox2 {
	border: 1px #C0C0C0 solid;
	background-color: #FFFFFF;
	color: #000000;
	font-family: Arial;
	font-size: 13px;
}

#Combobox3 {
	border: 1px #C0C0C0 solid;
	background-color: #FFFFFF;
	color: #000000;
	font-family: Arial;
	font-size: 13px;
}

#wb_Text8 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text8 div {
	text-align: left;
}

#TextArea1 {
	border: 1px #C0C0C0 solid;
	background-color: #FFFFFF;
	color: #000000;
	font-family: Arial;
	font-size: 13px;
	text-align: left;
}

#wb_Text9 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text9 div {
	text-align: left;
}

#TextArea2 {
	border: 1px #C0C0C0 solid;
	background-color: #FFFFFF;
	color: #000000;
	font-family: Arial;
	font-size: 13px;
	text-align: left;
}

#wb_Text10 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text10 div {
	text-align: left;
}

#wb_Text11 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text11 div {
	text-align: left;
}

#wb_Text12 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text12 div {
	text-align: left;
}

#wb_Text13 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text13 div {
	text-align: left;
}

#wb_Text14 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text14 div {
	text-align: left;
}

#wb_Text15 {
	background-color: transparent;
	border: 0px #000000 solid;
	padding: 0;
}

#wb_Text15 div {
	text-align: left;
}

#Button1 {
	color: #000000;
	font-family: Arial;
	font-size: 13px;
}

#Button2 {
	color: #000000;
	font-family: Arial;
	font-size: 13px;
}

#Image1 {
	border: 0px #000000 solid;
}

#wb_CssMenu1 a {
	display: block;
	float: left;
	margin: 0px 6px 0px 0px;
	color: #000000;
	border: 1px #FFD700 solid;
	background-color: #FFD700;
	font-family: Arial;
	font-size: 13px;
	font-weight: bold;
	font-style: normal;
	text-decoration: none;
	width: 198px;
	height: 23px;
	vertical-align: middle;
	line-height: 23px;
	text-align: center;
}

#wb_CssMenu1 a:hover {
	color: #000000;
	background-color: #EDF2F8;
	border: 1px #FFD700 solid;
}
</style>
</head>
<body>

	<%
	List<Empresa> empresas = Fachada.getInstance().cadastroEmpresa().listar();

%>
	<div id="space">
		<br>
	</div>
	<div id="container">
		<div id="Html1"
			style="position: absolute; left: 0px; top: 0px; width: 1500px; height: 765px; z-index: 0">
		</div>
		<hr id="Line1"
			style="margin: 0; padding: 0; position: absolute; left: 256px; top: 1px; width: 989px; height: 763px; z-index: 1;">
		<hr id="Line2"
			style="margin: 0; padding: 0; position: absolute; left: 1px; top: 171px; width: 1499px; height: 4px; z-index: 2;">
		<hr id="Line6"
			style="margin: 0; padding: 0; position: absolute; left: 1px; top: 48px; width: 1499px; height: 4px; z-index: 3;">
		<div id="wb_Text4"
			style="position: absolute; left: 1198px; top: 15px; width: 31px; height: 16px; z-index: 4;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong><u>Sair</u></strong></span>
		</div>
		<div id="wb_Text1"
			style="position: absolute; left: 291px; top: 257px; width: 63px; height: 16px; z-index: 5;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Empresa</strong></span>
		</div>
		<div id="wb_Text2"
			style="position: absolute; left: 290px; top: 301px; width: 63px; height: 16px; z-index: 6;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Linha</strong></span>
		</div>
		<div id="wb_Text3"
			style="position: absolute; left: 290px; top: 346px; width: 63px; height: 16px; z-index: 7;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Horário</strong></span>
		</div>
		<select name="empresa" size="1" id="Combobox1"
			style="position: absolute; left: 361px; top: 256px; width: 154px; height: 20px; z-index: 8;">
			<% for(Empresa emp : empresas){ %>
			<option value="<%=emp.getId() %>"><%=emp.getNome_empresa() %></option>
			<% } %>
		</select> <select name="ComboboxLinha" size="1" id="Combobox2"
			style="position: absolute; left: 360px; top: 301px; width: 154px; height: 20px; z-index: 9;">
			<option selected>Selecione a linha</option>
		</select> <select name="ComboboxHorario" size="1" id="Combobox3"
			style="position: absolute; left: 360px; top: 345px; width: 154px; height: 20px; z-index: 10;">
			<option selected>Selecione o horário</option>
		</select>
		<div id="wb_Text8"
			style="position: absolute; left: 591px; top: 241px; width: 63px; height: 16px; z-index: 11;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Detalhes</strong></span>
		</div>
		<textarea name="TextArea1" id="TextArea1"
			style="position: absolute; left: 591px; top: 262px; width: 248px; height: 101px; z-index: 12;"
			rows="5" cols="35"></textarea>
		<div id="wb_Text9"
			style="position: absolute; left: 870px; top: 241px; width: 69px; height: 16px; z-index: 13;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Sugestões</strong></span>
		</div>
		<textarea name="TextArea1" id="TextArea2"
			style="position: absolute; left: 870px; top: 262px; width: 248px; height: 101px; z-index: 14;"
			rows="5" cols="35"></textarea>
		<div id="wb_Text10"
			style="position: absolute; left: 325px; top: 413px; width: 204px; height: 16px; z-index: 15;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Reclamações
					pré-selecionadas</strong></span>
		</div>
		<input type="checkbox" id="Checkbox1" name="CheckboxAtraso" value="on"
			style="position: absolute; left: 317px; top: 448px; z-index: 16;">
		<input type="checkbox" id="Checkbox2" name="CheckboxAtraso" value="on"
			style="position: absolute; left: 317px; top: 476px; z-index: 17;">
		<input type="checkbox" id="Checkbox3" name="CheckboxAtraso" value="on"
			style="position: absolute; left: 317px; top: 504px; z-index: 18;">
		<input type="checkbox" id="Checkbox4" name="CheckboxAtraso" value="on"
			style="position: absolute; left: 317px; top: 532px; z-index: 19;">
		<input type="checkbox" id="Checkbox5" name="CheckboxAtraso" value="on"
			style="position: absolute; left: 317px; top: 560px; z-index: 20;">
		<div id="wb_Text11"
			style="position: absolute; left: 342px; top: 448px; width: 220px; height: 16px; z-index: 21;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Ônibus
					Atrasado (mais de 15 min)</strong></span>
		</div>
		<div id="wb_Text12"
			style="position: absolute; left: 342px; top: 476px; width: 94px; height: 16px; z-index: 22;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Super
					lotação</strong></span>
		</div>
		<div id="wb_Text13"
			style="position: absolute; left: 342px; top: 504px; width: 108px; height: 16px; z-index: 23;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Má
					conservação</strong></span>
		</div>
		<div id="wb_Text14"
			style="position: absolute; left: 342px; top: 532px; width: 182px; height: 32px; z-index: 24;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Queima
					de ponto (não para)</strong></span>
		</div>
		<div id="wb_Text15"
			style="position: absolute; left: 342px; top: 560px; width: 63px; height: 16px; z-index: 25;">
			<span style="color: #000000; font-family: Arial; font-size: 13px;"><strong>Outros</strong></span>
		</div>
		<input type="submit" id="Button1" name="" value="Enviar"
			style="position: absolute; left: 795px; top: 636px; width: 136px; height: 29px; z-index: 26;">
		<input type="reset" id="Button2" name="" value="Limpar"
			style="position: absolute; left: 641px; top: 636px; width: 136px; height: 29px; z-index: 27;">
		<div id="wb_Image1"
			style="position: absolute; left: 406px; top: 57px; width: 687px; height: 112px; z-index: 28; padding: 0;">
			<img src="images/logo.jpg" id="Image1" alt="" border="0"
				style="width: 687px; height: 112px;">
		</div>
		<div id="wb_CssMenu1"
			style="position: absolute; left: 433px; top: 193px; width: 618px; height: 32px; text-align: center; z-index: 29; padding: 0;">
			<a href="./EfetuarReclamacao.jsp">EFETUAR&nbsp;RECLAMAÇÃO</a> <a
				href="./LocalOnibus.jsp">Veja&nbsp;onde&nbsp;está&nbsp;seu&nbsp;ônibus</a>
			<a href="./Feed.jsp">Feed</a>
		</div>
	</div>
</body>
</html>