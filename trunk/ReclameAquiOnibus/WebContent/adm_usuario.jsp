<!DOCTYPE html>
<%@page import="reclame.entidades.Usuario"%>
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
            <li class="">
              <a href="adm_home.jsp"><span class="glyphicon glyphicon-star"></span>   Início</a>
            </li>
            <li class="active">
              <a href="adm_usuario.jsp"><span class="glyphicon glyphicon-flash"></span>   Usuário</a>
            </li>
            <li>
              <a href="adm_onibus.jsp"><span class="glyphicon glyphicon-road"></span>   Ônibus</a>
            </li>
            <li>
              <a href="adm_empresa.jsp"><span class="glyphicon glyphicon-tasks">   Empresa</span></a>
            </li>
            <li>
              <a href="adm_rota.jsp"><span class="glyphicon glyphicon-flag"> Rota</span></a>
            </li>
            <li>
              <a href="sair.jsp"><span class="glyphicon glyphicon-off"> SAIR</span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="tabbable" draggable="true">
        <ul class="nav nav-tabs">
          <li class="active">
            <a href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-plus"></span>  Cadastrar</a>
          </li>
          <li>
            <a href="#tab3" data-toggle="tab"><span class="glyphicon glyphicon-list"></span>   Listar</a>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="tab1">
            <p draggable="true"></p>
            <hr>
            <form action="controlador" method="POST" class="form-horizontal">
            	<input type="hidden" name="acao" value="cadastrar_representante" />
              <fieldset>
                <!-- Form Name -->
                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="nome">Nome:</label>
                  <div class="col-md-6">
                    <input id="nome" name="nome" type="text" placeholder="Digite seu nome" class="form-control input-md" required="">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-4 control-label" for="cpf">CPF:</label>
                  <div class="col-md-6">
                    <input id="cpf" name="cpf" type="text" placeholder="Digite seu CPF" class="form-control input-md" required="">
                  </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="email">E-Mail:</label>
                  <div class="col-md-6">
                    <input id="email" name="email" type="email" placeholder="Digite seu e-mail"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <!-- Password input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="senha">Senha:</label>
                  <div class="col-md-6">
                    <input id="senha" name="senha" type="password" placeholder="Digite sua senha"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <!-- Password input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="repetirsenha">Repita a senha:</label>
                  <div class="col-md-6">
                    <input id="repetirsenha" name="repetirsenha" type="password" placeholder="Repita sua senha"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <!-- Button (Double) -->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="cancelar"></label>
                  <div class="col-md-8">
                    <a class="btn btn-danger" href="adm_home.jsp">Cancelar</a>
                    <button id="cadastrar" name="cadastrar" class="btn btn-success">Cadastrar</button>
                  </div>
                </div>
              </fieldset>
            </form>
          </div>
          
          <%
          List<Usuario> representantes = Fachada.getInstance().cadastroUsuario().listarRepresentantes();
          
          %>
          
          
          <div class="tab-pane" id="tab3">
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
            <script src="http://templateplanet.info/tooltip.js"></script>
            <script src="http://templateplanet.info/modal.js"></script>
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <h4>Representantes de Empresa Cadastrados</h4>
                  <div class="table-responsive">
                    <table id="mytable" class="table table-bordred table-striped">
                      <thead>
                        <tr>
                          <th>
                            <input type="checkbox" id="checkall">
                          </th>
                          <th>CPF</th>
                          <th>Nome</th>
                          <th>E-Mail</th>
                          <th>Editar</th>
                          <th>Remover</th>
                        </tr>
                      </thead>	
                      <tbody>
                      <% for (Usuario u : representantes) {  %>
                        <tr>
                          <td>
                            <input type="checkbox" class="checkthis">
                          </td>
                          <td><%=u.getCpf() %></td>
                          <td><%=u.getNome() %></td>
                          <td><%=u.getEmail() %></td>
                          <td>
                            <p>
                              <button class="btn btn-primary btn-xs" data-title="Editar" data-toggle="modal" data-target="#edit" data-placement="top" rel="tooltip" value="<%=u.getId() %>">
                                <span class="glyphicon glyphicon-pencil"></span>
                              </button>
                            </p>
                          </td>
                          <td>
                            <p>
                              <button class="btn btn-danger btn-xs" data-title="Remover" data-toggle="modal" data-target="#delete" data-placement="top" rel="tooltip" value="<%=u.getId() %>">
                                <span class="glyphicon glyphicon-trash"></span>
                              </button>
                            </p>
                          </td>
                        </tr>
                        <%} %>
                      </tbody>
                    </table>
                    <div class="clearfix"></div>
                    <ul class="pagination pull-right">
                      <li class="disabled">
                        <a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a>
                      </li>
                      <li class="active">
                        <a href="#">1</a>
                      </li>
                      <li>
                        <a href="#">2</a>
                      </li>
                      <li>
                        <a href="#">3</a>
                      </li>
                      <li>
                        <a href="#">4</a>
                      </li>
                      <li>
                        <a href="#">5</a>
                      </li>
                      <li>
                        <a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
                  </div>
                  <div class="modal-body">
                    <div class="form-group">
                      <input class="form-control " type="text" placeholder="Mohsin">
                    </div>
                    <div class="form-group">
                      <input class="form-control " type="text" placeholder="Irshad">
                    </div>
                    <div class="form-group">
                      <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
                    </div>
                  </div>
                  <div class="modal-footer ">
                    <button type="button" class="btn btn-warning btn-lg" style="width: 100%;">
                      <span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Update</button>
                  </div>
                </div>
                <!-- /.modal-content -->
              </div>
              <!-- /.modal-dialog -->
            </div>
            <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit"
            aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
                  </div>
                  <div class="modal-body">
                    <div class="alert alert-warning">
                      <span class="glyphicon glyphicon-warning-sign"></span>Are you sure you want to delete this Record?</div>
                  </div>
                  <div class="modal-footer ">
                    <button type="button" class="btn btn-warning">
                      <span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Yes</button>
                    <button type="button" class="btn btn-warning">
                      <span class="glyphicon glyphicon-remove"></span>&nbsp;No</button>
                  </div>
                </div>
                <!-- /.modal-content -->
              </div>
              <!-- /.modal-dialog -->
            </div>
          </div>
        </div>
        <!-- Only required for left/right tabs -->
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <hr>
        </div>
      </div>
    </div>
    <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
      <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
    </div>
  </body>

</html>