<!DOCTYPE html>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="reclame.entidades.Reclamacao"%>
<%@page import="reclame.fachada.Fachada"%>
<%@page import="java.util.List"%>
<html>
  
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
    rel="stylesheet">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  
  </head>
  
  <body class="visible-lg visible-md visible-sm visible-xs">
  
    <%
          List<Reclamacao> rec = Fachada.getInstance().cadastroReclamacao().listar();
          
          %>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
    rel="stylesheet">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <div class="navbar navbar-default navbar-static-top navbar-inverse">
      <style>
        .body{padding-top:70px}
      </style>
      <div class="container">
        <div class="navbar-header">
          <a type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"></a>
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-left navbar-nav">
            <li>
              <a href="home.jsp"><span class="glyphicon glyphicon-star"></span>   Início</a>
            </li>
            <li>
              <a href="reclamacao.jsp"><span class="glyphicon glyphicon-flash"></span>   Efetuar uma reclamação</a>
            </li>
            <li>
              <a href="LocalOnibus.jsp"><span class="glyphicon glyphicon-flag"></span>   Veja onde está seu ônibus</a>
            </li>
            <li class="active">
              <a href="feed.jsp"><span class="glyphicon glyphicon-tasks">   Feed de reclamações</span></a>
            </li>
            <li>
              <a href="controlador?acao=logout"><span class="glyphicon glyphicon-off"> Sair</span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
   <div style="width:120; height:650px; overflow-y:scroll;">
      <% for (Reclamacao u : rec) {  %>
      
      
 
    <section >
      <div class="container"  >
      <div class="col-md-12" draggable="true">
          <hr>
        </div>
        <div class="row" draggable="true">
          <div class="col-md-12" draggable="true">
            <div class="container">
              <div class="row" draggable="true">
                <div class="[ ] col-md-10 col-sm-5 col-sm-offset-1 col-xs-12 text-center">
                  <div class="[ panel panel-default ] panel-google-plus" style="">
                      <div class="panel-heading" style="background:E0E0E0">                   
                    <div class="panel-heading" style="background:#E0E0E0">
                      <img class="[ ] img-thumbnail pull-left" src="images/usuario.jpg">
                      <h3 class="text-left">&nbsp<%=u.getUsuario().getNome() %></h3>
                      <h5 draggable="true" class="text-left">
                        <span >&nbsp<%=u.getTipo() %></span>
                      </h5>
                    </div>
                    </div>
                    <div class="panel-body" style="background:#F4F5F4 ">
                     <h5 draggable="true" class="text-left" >
                        <span ><b>Reclamação:</b></span>
                      <p><%=u.getDescricao_reclamacao() %></p>
                    </div>
                    <div class="panel-footer" style="background:#DEFCE7 ">
                   <img class="[ ] img-thumbnail pull-left" src="images/empresa.jpg">
                      <h3 class="text-left">&nbsp<%=u.getEmpresa().getRazao() %></h3>
                      <h5 draggable="true" class="text-left">
                        <span >&nbspEmpresa</span>
                      </h5>
                      <h5 class="text-center"><%= u.getResposta() %></h5>
                      
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
 
    <%} %>
 <div class="container"  >
      <div class="col-md-12" draggable="true">
          <hr>
        </div>
   
        <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
          <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
        </div>
  </body>

</html>