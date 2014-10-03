<!DOCTYPE html>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="reclame.entidades.Usuario"%>
<%@page import="reclame.fachada.Fachada"%>
<%@page import="java.util.List"%>
<html>
  
  <head>

    <meta charset="utf-8">
    <script type="text/javascript">
    function sucesso() { alert("Usuário cadastrado com sucesso !");}
    </script>
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
           
           <li >
              <a href="adm_usuario.jsp"><span class="glyphicon glyphicon-user"></span>   Usuário</a>
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
              <a href="controlador?acao=logout"><span class="glyphicon glyphicon-off"> Sair</span></a>
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
            <a href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-list"></span>   Listar</a>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="tab1">
            <p draggable="true"></p>
            <hr>
            <form class="form-horizontal" action="controlador" method="POST"  onabort="" onsubmit="sucesso();">
            	<input type="hidden" name="acao" value="cadastrar_representante" />
              <fieldset>
                <!-- Form Name -->
                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="nome">Nome:</label>
                  <div class="col-md-6">
                    <input id="nome" name="nome" type="text" placeholder="Digite seu nome" class="form-control input-md" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-4 control-label" for="cpf">CPF:</label>
                  <div class="col-md-6">
                    <input id="cpf" name="cpf" type="text" placeholder="Digite seu CPF" class="-control input-md" required>
                  </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="email">E-Mail:</label>
                  <div class="col-md-6">
                    <input id="email" name="email" type="email" placeholder="Digite seu e-mail"
                    class="form-control input-md" required>
                  </div>
                </div>
                <!-- Password input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="senha">Senha:</label>
                  <div class="col-md-6">
                    <input id="senha" name="senha" type="password" placeholder="Digite sua senha"
                    class="form-control input-md" required>
                  </div>
                </div>
                <!-- Password input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="repetirsenha">Repita a senha:</label>
                  <div class="col-md-6">
                    <input id="repetirsenha" name="repetirsenha" type="password" placeholder="Repita sua senha"
                    class="form-control input-md" required>
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
          List<Usuario> representantes = Fachada.getInstance().cadastroUsuario().listar();
          
          %>
          
          
          <div class="tab-pane" id="tab2">
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
                            <input type="button" hidden="true"  >
                           
                          </th>
                          <th>Nome</th>
                          <th>E-Mail</th>
                          <th>Senha</th>
                          <th>CPF</th>
                          <th>Endereço</th>
                          <th>Idade</th>
                          <th>Sexo</th>
                          <th>Editar</th>
                          <th>Remover</th>
                        </tr>
                      </thead>	
                      <tbody>
                      <% for (Usuario u : representantes) {  %>
                        <tr>
                          <td>
                           <INPUT TYPE="radio" NAME="OPCAO" VALUE="<%=u.getId()%>" >
                          </td>
                          <td><%=u.getNome() %></td>
                          <td><%=u.getEmail() %></td>
                          <td><%=u.getSenha() %></td>
                          <td><%=u.getCpf() %></td>
                          <td><%=u.getEndereco() %></td>
                          <td><%=u.getIdade() %></td>
                          <td><%=u.getSexo() %></td>
                          <td>
                            <p>
                              <button class="btn btn-primary btn-xs" data-title="Editar" data-toggle="modal" data-target="#editar" data-placement="top" rel="tooltip" value="<%=u.getId() %>">
                                <span class="glyphicon glyphicon-pencil"></span>
                              </button>
                            </p>
                          </td>
                          <td>
                            <p>
                              <button class="btn btn-danger btn-xs" data-title="Remover" data-toggle="modal" data-target="#deletar" data-placement="top" rel="tooltip" value="<%=u.getId() %>">
                                <span class="glyphicon glyphicon-trash"></span>
                              </button>
                            </p>
                          </td>
                        </tr>
                        <%} %>
                      </tbody>
                    </table>
                   
                  </div>
                </div>
              </div>
            </div>
            <div class="modal fade" id="editar" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
           <form action="controlador" method="post">
          <%   for (Usuario u : representantes) {
          %>
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title custom_align" id="Heading">Editar</h4>
                  </div>
                  <div class="modal-body">
                    <div class="form-group">                   
                     Nome<input class="form-control " type="text" value="<%= u.getNome() %>" >
                    </div>
                    <div class="form-group">
                      Cpf<input class="form-control " type="text" value="<%= u.getCpf() %>" >
                    </div>
                    <div class="form-group">
                      E-mail<input class="form-control " type="text" value="<%= u.getEmail()%>" >
                    </div>
                 
                  </div>
                  <div class="modal-footer ">
                    <button type="submit" value="editar" class="btn btn-warning btn-lg" style="width: 100%;">
                      <span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Atualizar dados</button>
                  </div>
                </div>
                <!-- /.modal-content -->
              </div>
             </form> <!-- /.modal-dialog -->
                  <%} %>
            </div>
            <div class="modal fade" id="deletar" tabindex="-1" role="dialog" aria-labelledby="edit"
            aria-hidden="true">
            
            <form action="controlador" method="post">
            
             <%   for (Usuario u : representantes) {
          %>
            
            
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title custom_align" id="Heading">Excluir</h4>
                  </div>
                  <div class="modal-body">
                   <div class="form-group">
                      Nome<input class="form-control"  type="text" readonly="readonly" value="<%=u.getNome() %>" >
                      E-mail<input class="form-control" type="text" readonly="readonly" value="<%=u.getEmail() %>" >
                    </div>
                    <div class="alert alert-warning">
                      <span class="glyphicon glyphicon-warning-sign"></span>   Tem certeza que deseja excluir ?</div>
                  </div>
                  <div class="modal-footer ">
                    <button type="submit" class="btn btn-warning" name="excluir" value="excluir">
                      <span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Sim</button>
                    <button type="button" class="btn btn-warning" data-dismiss="modal" aria-hidden="true"  >
                      <span class="glyphicon glyphicon-remove"></span>&nbsp;Não</button>
                  </div>
                </div>
                <!-- /.modal-content -->
          </form>
       <%} %>     </div>
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