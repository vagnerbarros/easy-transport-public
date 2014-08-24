<!DOCTYPE html>
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
            <li class="active">
              <a href="reclamacao.jsp"><span class="glyphicon glyphicon-flash"></span>   Efetuar uma reclamação</a>
            </li>
            <li>
              <a href="LocalOnibus.jsp"><span class="glyphicon glyphicon-flag"></span>   Veja onde está seu ônibus</a>
            </li>
            <li>
              <a href="feed.jsp"><span class="glyphicon glyphicon-tasks">   Feed de reclamações</span></a>
            </li>
            <li>
              <a href="sair.jsp"><span class="glyphicon glyphicon-off"> SAIR</span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <form class="form-horizontal">
          <fieldset>
            <!-- Form Name -->
            <legend>Enviar uma reclamação</legend>
            <!-- Select Basic -->
            <div class="control-group">
              <label class="control-label" for="empresa">Selecione a empresa:</label>
              <div class="controls">
                <select id="empresa" name="empresa" class="input-xlarge">
                  <option>Bahia</option>
                  <option>Capital do Agreste</option>
                  <option>Tabosa</option>
                  <option>Coletivo</option>
                </select>
              </div>
            </div>
            <!-- Select Basic -->
            <div class="control-group">
              <label class="control-label" for="linha">Selecione a linha:</label>
              <div class="controls">
                <select id="linha" name="linha" class="input-xlarge">
                  <option>Fafica -Via Pitombeira</option>
				  <option>Bairro Agamenon</option>
                  <option>Boa Vista I</option>
                  <option>Bairro Universitário</option>
                </select>
              </div>
            </div>
            <!-- Select Basic -->
            <div class="control-group">
              <label class="control-label" for="hora">Selecione o horário:</label>
              <div class="controls">
                <select id="hora" name="hora" class="input-xlarge">
                  <option>8:00 às 8:30</option>
                  <option>8:30 às 9:00</option>
                  <option>9:00 às 9:30</option>
                  <option>9:30 às 10:00</option>
                </select>
              </div>
            </div>
            <!-- Textarea -->
            <div class="control-group">
              <label class="control-label" for="detalhe">Detalhes:</label>
              <div class="controls">
                <textarea id="detalhe" name="detalhe" style="margin: 0px; width: 245px; height: 90px;"></textarea>
              </div>
            </div>
            <!-- Textarea -->
            <div class="control-group">
              <label class="control-label" for="Sugestoes">Sugestões:</label>
              <div class="controls">
                <textarea id="Sugestoes" name="Sugestoes" style="margin: 0px; height: 115px; width: 243px;"></textarea>
              </div>
            </div>
            <!-- Button (Double) -->
            <div class="control-group">
              <label class="control-label" for="cancelar"></label>
              <div class="controls">
                <a class="btn btn-danger" href="home.jsp">Cancelar</a>
                <button id="enviar" name="enviar" class="btn btn-success">Enviar</button>
              </div>
            </div>
          </fieldset>
        </form>
      </div>
    </div>
    <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
      <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
    </div>
  </body>

</html>