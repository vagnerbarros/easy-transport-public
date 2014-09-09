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
    <div class="navbar navbar-default navbar-static-top navbar-inverse" draggable="true">
      <style>
        .body{padding-top:70px}
      </style>
      <div class="container">
        <div class="navbar-header">
          <a type="button" class="navbar-toggle" data="" -toggle="collapse" data-target=".navbar-collapse"></a>
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-left navbar-nav">
            <li class="active">
              <a href="Index.jsp">Início</a>
            </li>
            <li>
              <a href="contato.jsp"><span class="glyphicon glyphicon-star"></span>   Contato</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="images/reclame.png" class="img-responsive">
        </div>
        <div class="col-md-6">
          <div class="alert alert-danger hide  alert-dismissable">
            <button contenteditable="false" type="button" class="close" data-dismiss="alert"
            aria-hidden="true">x</button>
            <strong>Erro!</strong>Digite seu e-mail e senha novamente.</div>
          <hr>
          <img src="images\empresa.png" class="center-block img-responsive">
          <hr>
          <form role="form" action="controlador" method="POST" class="form-horizontal text-left" >
            <input type="hidden" name="acao" value="logar_empresa">
            <div class="form-group has-success">
              <div class="col-sm-2">
                <label for="inputEmail3" class="control-label">Email</label>
              </div>
              <div class="col-sm-10">
                <input type="email" class="form-control" required="required" name="email"
                id="inputEmail3" placeholder="E-mail">
              </div>
            </div>
            <div class="form-group has-success">
              <div class="col-sm-2">
                <label for="inputPassword3" class="control-label">Password</label>
              </div>
              <div class="col-sm-10">
                <input type="password" class="form-control" required="required" name="senha"
                id="inputPassword3" placeholder="Senha">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                  <label>
                    <input type="checkbox">Esqueceu sua senha ?</label>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-block btn-primary">Entrar</button>
              </div>
            </div>
          </form>
          <hr>
        </div>
      </div>
      <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
        <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
      </div>
    </div>
  </body>

</html>