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
  
  <body>
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
              <a href="inicio.jsp">Início</a>
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
          <form class="form-horizontal" action="controlador" method="POST">
          <input type="hidden" name="acao" value="cadastrar" />
            <fieldset>
              <!-- Form Name -->
              <legend>Cadastro</legend>
              <!-- Text input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="nome">Nome:*</label>
                <div class="col-md-6">
                  <input id="nome" name="nome" type="text" placeholder="Digite seu nome"
                  class="form-control input-md" required="required">
                </div>
              </div>
              
              <!-- cpf input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="cpf">CPF:*</label>
                <div class="col-md-6">
                  <input id="cpf" name="cpf" type="number" placeholder="Digite seu cpf"
                  class="form-control input-md" required="required">
                </div>
              </div>
              
              <!-- Text input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="email">E-Mail :*</label>
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
                <label class="col-md-4 control-label" for="senha">Senha:*</label>
                <div class="col-md-6">
                  <input id="senha" name="senha" type="password" placeholder="Digite sua senha"
                  class="form-control input-md" required="">
                </div>
              </div>
              
              <!-- Password input-->
              <div class="form-group">
                <label class="col-md-4 control-label" for="confirmarsenha">Repita a senha: *</label>
                <div class="col-md-6">
                  <input id="confirmarsenha" name="confirmarsenha" type="password" placeholder="Confirme sua senha"
                  class="form-control input-md" required="">
                </div>
              </div>
              
              
              
              <!-- Button (Double) -->
              <div class="form-group">
                <label class="col-md-4 control-label" for="cancelar"></label>
                <div class="col-md-8">
                  <a class="btn btn-danger" href="Index.jsp">Cancelar</a>
                  <button id="cadastrar" name="cadastrar" class="btn btn-success">Cadastrar</button>
				<br> <br> * - Campos ObrigatÃ³rios
                </div>
              </div>
            </fieldset>
          </form>
        </div>
        <div class="col-md-6"></div>
      </div>
      <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
        <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
      </div>
    </div>
  </body>

</html>