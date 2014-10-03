<!DOCTYPE html>
<%@page import="reclame.fachada.Fachada"%>
<%@page import="reclame.entidades.Rota"%>
<%@page import="reclame.entidades.Empresa"%>
<%@page import="java.util.List"%>
<html>
  
  <head>
    <meta charset="utf-8">
    <title>Reclame Aqui do Seu Ônibus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
    rel="stylesheet">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </head>
  
  <body class="visible-lg visible-md visible-sm visible-xs">
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
            <li class="active">
              <a href="LocalOnibus.jsp"><span class="glyphicon glyphicon-flag"></span>   Veja onde está seu Ônibus</a>
            </li>
            <li>
              <a href="feed.jsp"><span class="glyphicon glyphicon-tasks">   Feed de reclamações</span></a>
            </li>
            <li>
              <a href="controlador?acao=logout"><span class="glyphicon glyphicon-off"> Sair</span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-8 text-left">
          <div class="controls" id="mapa" style="left: -7px; top: -8px; height: 435px; width: 760px"></div>
          <script src="js/jquery-1.9.1.min.js"></script>
          <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
          <script src="js/infobox.js"></script>
          <script src="js/markerclusterer.js"></script>
          <!-- Maps API Javascript -->
          <script src="js/mapa.js"></script>
          <!-- Caixa de informaÃ§Ã£o -->
          <!-- Agrupamento dos marcadores -->
          <!-- Arquivo de inicializaÃ§Ã£o do mapa -->
        </div>
        <script src="js/jquery-1.9.1.min.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script src="js/infobox.js"></script>
        <script src="js/markerclusterer.js"></script>
        <script src="js/mapa.js"></script>
        <script src="js/jquery-1.9.1.min.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script src="js/infobox.js"></script>
        <script src="js/markerclusterer.js"></script>
        
        <%
        
        List<Rota> rotas = Fachada.getInstance().cadastroRota().listar();
        List<Empresa> empresas = Fachada.getInstance().cadastroEmpresa().listar();
        %>
        
        <div class="col-md-2 text-left" draggable="true">
          <form action="controlador" method="POST" class="form-horizontal">
          <input type="hidden" name="acao" value="localizar_onibus" />
            <fieldset>
              <!-- Form Name -->
              <!-- Select Basic -->
              <div class="control-group">
                <label class="control-label" for="empresa">Selecione a empresa</label>
                <div class="controls">
                  <select id="empresa" name="id_empresa" class="input-xlarge">
                  	<%for (Empresa emp : empresas){ %>
                    <option value="<%=emp.getId() %>"><%=emp.getRazao() %></option>
                    <%} %>
                  </select>
                </div>
              </div>
              <!-- Select Basic -->
              <div class="control-group">
                <label class="control-label" for="linha">Selecione a linha</label>
                <div class="controls">
                  <select id="linha" name="id_rota" class="input-xlarge">
                    <% for(Rota r : rotas){ %>
                    <option value="<%=r.getId() %>" ><%=r.getNome() + " - " + r.getEmpresa().getRazao() %></option>
                    <% } %>
                  </select>
                </div>
              </div>
              <!-- Button -->
              <div class="control-group">
                <label class="control-label" for="enviar"></label>
                <div class="controls">
                  <a class="btn btn-danger" href="home.jsp">Cancelar</a>
                  <button id="enviar" name="enviar" class="btn btn-success">Ver</button>
                </div>
              </div>
            </fieldset>
          </form>
        </div>
        <script src="js/mapa.js"></script>
        <!-- Maps API Javascript -->
        <!-- Caixa de informaÃ§Ã£o -->
        <!-- Agrupamento dos marcadores -->
        <!-- Arquivo de inicializaÃ§Ã£o do mapa -->
        <!-- Maps API Javascript -->
        <!-- Caixa de informaÃ§Ã£o -->
        <!-- Agrupamento dos marcadores -->
        <!-- Arquivo de inicializaÃ§Ã£o do mapa -->
      </div>
    </div>
    <div class="container"></div>
    <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
      <h4 class="text-center">Â© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
    </div>
  </body>

</html>