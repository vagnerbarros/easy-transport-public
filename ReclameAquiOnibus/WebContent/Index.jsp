<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="utf-8">
    <script type="text/javascript">
    function sucesso() { alert("Cadastro realizado com sucesso !");}
    function verificarsenha() {
    var senha1 =	document.getElementById("senha").value;
	var senha2 = document.getElementById("confirmarsenha").value;
	if (senha1 != senha2){ alert("As senha não são iguais!\nRedigite! ");} 
	 
	}
    </script>
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
        <div class="col-md-6 text-center" draggable="true">
          <div class="alert alert-danger hide  alert-dismissable">
            <button contenteditable="false" type="button" class="close" data-dismiss="alert"
            aria-hidden="true">Ã—</button>
            <strong>Erro!</strong>Digite seu e-mail e senha novamente.</div>
          <hr>
          <form class="form-horizontal text-left" role="form" action="controlador"
          method="POST">
            <input type="hidden" name="acao" value="logar">
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
                    <a href="#">Esqueceu sua senha ?</a>
                  </label>
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
          <div class="row text-right">Não é cadastrado ?
            <b><a data-title="cadastrar" data-toggle="modal" data-target="#cadastrar" data-placement="top" rel="tooltip" draggable="true">Cadastre-se já</a></b>
          </div>
          <hr>
          <hr>
          <hr>
          <hr>
          <a href="emp_index.jsp"><img src="images\empresa.png" class="center-block img-responsive"></a>
          <a href="emp_index.jsp">Clique aqui!</a>
          <hr>
        </div>
      </div>
      <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
        <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
      </div>
    </div>
    <div class="modal fade" id="cadastrar" tabindex="-1" role="dialog" aria-labelledby="cadastrar" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x—</button>
            <h4 class="modal-title">Cadastro</h4>
          </div>
          <div class="modal-body">
           <form class="form-horizontal" action="controlador" method="POST"  onabort="" onsubmit="sucesso();">
              <fieldset>
                <!-- Form Name -->
                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="nome">Nome:</label>
                  <div class="col-md-6">
                    <input type="text" id="nome" name="nome" placeholder="Digite seu nome"
                    class="form-control input-md" required="required">
                  </div>
                </div>
                <!-- cpf input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="cpf">CPF:</label>
                  <div class="col-md-6">
                    <input id="cpf" name="cpf" type="number" placeholder="Digite seu cpf"
                    class="form-control input-md" required="required">
                  </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="email">E-Mail :</label>
                  <div class="col-md-6">
                    <input id="email" name="email" type="email" placeholder="Digite seu e-mail"
                    class="form-control input-md" required="required">
                  </div>
                </div>
                <!-- endereco input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="endereco">Endereço:</label>
                  <div class="col-md-6">
                    <input id="endereco" name="endereco" type="text" placeholder="Digite seu endereço"
                    class="form-control input-md" required="required">
                  </div>
                </div>
                <!-- idade input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="idade">Idade:</label>
                  <div class="col-md-6">
                    <input id="idade" name="idade" type="number" placeholder="Digite sua idade"
                    class="form-control input-md" required="required">
                  </div>
                </div>
                <!-- Sexo input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="sexo">Sexo:</label>
                  <div class="col-md-6">
                    <select name="sexo" id="sexo" class="form-control input-md" required="required">
                      <option value="">Selecione seu sexo</option>
                      <option value="M">Masculino</option>
                      <option value="F">Feminino</option>
                    </select>
                  </div>
                </div>
                <!-- Password input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="senha">Senha:</label>
                  <div class="col-md-6">
                    <input type="password" id="senha" name="senha" placeholder="Digite sua senha"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <!-- Password input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="confirmarsenha">Repita a senha:</label>
                  <div class="col-md-6">
                    <input type="password" id="confirmarsenha" name="confirmarsenha" onblur="verificarsenha();" placeholder="Confirme sua senha"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <!-- Button (Double) -->
              </fieldset>
          </div>
          <div class="modal-footer">
            <div class="form-group">
              <label class="col-md-4 control-label" for="cancelar"></label>
              <div class="col-md-8">
                <a class="btn btn-danger" data-dismiss="modal" draggable="true">Cancelar</a>
                <input type="submit" name="acao"  value="cadastrar" class="btn btn-success">
                </div>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>