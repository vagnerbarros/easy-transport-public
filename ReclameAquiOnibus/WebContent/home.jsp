<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="utf-8">
    <title>Reclame Aqui do Seu �nibus</title>
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
            <li class="active">
              <a href="home.jsp"><span class="glyphicon glyphicon-star"></span>   Inicio</a>
            </li>
            <li>
              <a href="reclamacao.jsp"><span class="glyphicon glyphicon-flash"></span>   Efetuar uma reclama��o</a>
            </li>
            <li>
              <a href="LocalOnibus.jsp"><span class="glyphicon glyphicon-flag"></span>   Veja onde est� seu �nibus</a>
            </li>
            <li>
              <a href="feed.jsp"><span class="glyphicon glyphicon-tasks">   Feed de reclama��es</span></a>
            </li>
            <li>
              <a href="controlador?acao=logout"><span class="glyphicon glyphicon-off"> Sair</span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row text-left" bg="">
        <h3 draggable="true">Clique aqui para efetuar uma reclama��o.</h3>
        <a href="reclamacao.jsp"
        class="btn btn-lg btn-primary"><span class="glyphicon glyphicon-hand-right"></span>  Efetuar uma reclama��o</a>
      </div>
      <br>
      <br>
      <br>
      <div class="row text-center" draggable="true">
        <h3>Clique aqui para ver onde est� seu �nibus.</h3>
        <a href="LocalOnibus.jsp"
        class="btn btn-lg btn-primary" draggable="true"><span class="glyphicon glyphicon-hand-right"></span>  Veja onde est� seu �nibus</a>
      </div>
      <br>
      <br>
      <br>
      <br>
      <div class="row text-right" draggable="true">
        <h3>Clique aqui para efetuar uma reclama��o !</h3>
        <a href="feed.jsp" class="btn btn-lg btn-primary"><span class="glyphicon glyphicon-hand-right"></span> Feed de  reclama��es </a>
      </div>
      <br>
      <br>
    </div>
    <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
      <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
    </div>
  </body>

</html>