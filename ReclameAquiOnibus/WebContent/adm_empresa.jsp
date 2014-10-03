<!DOCTYPE html>
<%@page import="reclame.fachada.Fachada"%>
<%@page import="reclame.entidades.Empresa"%>
<%@page import="java.util.List"%>
<html>
  
  <head>
    <meta charset="utf-8">
    
    <script src="jquery.js" type="text/javascript"></script>
    <script src="jquery.maskedinput.js" type="text/javascript"></script>
    
    <script type="text/javascript">
    function sucesso() { alert("Empresa cadastrada com sucesso !");}
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
      <div class="tabbable">
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
            	<input type="hidden" name="acao"  value="cadastrar_empresa" />
      
              <fieldset>
                <div class="form-group">
                  <label class="col-md-4 control-label" for="nome">Razão Social:</label>
                  <div class="col-md-6">
                    <input id="nome" name="razao" type="text" placeholder="Digite o nome da empresa"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-4 control-label" for="senha">CNPJ:</label>
                  <div class="col-md-6">
                    <input id="cnpj" name="cnpj" type="number" placeholder="Digite o CNPJ da empresa"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-4 control-label" for="repetirsenha">E-mail:</label>
                  <div class="col-md-6">
                    <input id="email" name="email" type="email" placeholder="Digite o e-mail da empresa"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-4 control-label" for="email">Senha:</label>
                  <div class="col-md-6">
                    <input id="senha" name="senha" type="password" placeholder="Digite a senha da empresa"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-4 control-label" for="email">Repita a senha:</label>
                  <div class="col-md-6">
                    <input id="confirmarsenha" name="resenha" type="password" placeholder="Repita a senha da empresa"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <!-- Form Name -->
                <!-- Text input-->
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
          List<Empresa> empresas = Fachada.getInstance().cadastroEmpresa().listar();
          %>
          
          <div class="tab-pane" id="tab2">
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
            <script src="http://templateplanet.info/tooltip.js"></script>
            <script src="http://templateplanet.info/modal.js"></script>
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <h4>Empresas Cadastradas</h4>
                  <div class="table-responsive">
                    <table id="mytable" class="table table-bordred table-striped">
                      <thead>
                        <tr>
                          <th>
                             <input type="button" hidden="true"  >
                          </th>
                          <th>Razão Social</th>
                          <th>CNPJ</th>
                          <th>E-Mail</th>
                          <th>Senha</th>
                          <th>Edit</th>
                          <th>Delete</th>
                        </tr>
                      </thead>
                      <tbody>
                      <% for (Empresa emp : empresas){ %>
                        <tr>
                          <td>
                            <INPUT TYPE="radio" NAME="OPCAO" VALUE="<%=emp.getId()%>" >
                          </td>
                          <td><%=emp.getRazao() %></td>
                          <td><%=emp.getCnpj() %></td>
                          <td><%=emp.getEmail() %></td>
                          <td><%=emp.getSenha() %></td>
                          <td>
                            <p>
                              <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal"
                              data-target="#edit" data-placement="top" rel="tooltip">
                                <span class="glyphicon glyphicon-pencil"></span>
                              </button>
                            </p>
                          </td>
                          <td>
                            <p>
                              <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal"
                              data-target="#delete" data-placement="top" rel="tooltip">
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
            <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            
             <%   for (Empresa emp : empresas) {
          %>
             <form action="controlador" method="post">
             	<input type="hidden" name="acao" value="editar_empresa" />
            	<input type="hidden" name="id" value="<%=emp.getId() %>" />
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title custom_align" id="Heading">Editar</h4>
                  </div>
                  <div class="modal-body">
                    <div class="form-group">                   
                    Razão Social<input class="form-control " type="text" name="razao" value="<%= emp.getRazao() %>" >
                    </div>
                    <div class="form-group">
                      CNPJ<input class="form-control " type="text" name="cnpj" value="<%= emp.getCnpj() %>" >
                    </div>
                    <div class="form-group">
                      E-mail<input class="form-control " type="text" readonly="readonly" value="<%= emp.getEmail()%>" >
                    </div>
                     <div class="form-group">
                      Senha<input class="form-control " type="text" readonly="readonly" value="<%= emp.getSenha()%>" >
                    </div>
                  </div>
                  <div class="modal-footer ">
                   <button type="submit" value="editar" class="btn btn-warning btn-lg" style="width: 100%;">
                      <span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Atualizar dados</button>
                  </div>
                </div>
                <!-- /.modal-content -->
              </div>
        </form><%} %>  <!-- /.modal-dialog -->
            </div>
            <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
              
            
             <%   for (Empresa emp : empresas) {
          %>
               <form action="controlador" method="post">
               <input type="hidden" name="acao" value="deletar_empresa" />
            	<input type="hidden" name="id" value="<%=emp.getId() %>" />
              
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title custom_align" id="Heading">Excluir</h4>
                  </div>
                  <div class="modal-body">
                   
                    <div class="form-group">
                     Razão Social<input class="form-control"  type="text" readonly="readonly" value="<%=emp.getRazao() %>" >
                      CNPJ<input class="form-control" type="text" readonly="readonly" value="<%=emp.getCnpj() %>" >
                       E-mail<input class="form-control" type="text" readonly="readonly" value="<%=emp.getEmail() %>" >
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
              </div>
            </form><%} %>   <!-- /.modal-dialog -->
            </div>
          </div>
        </div>
        <!-- Only required for left/right tabs -->
      </div>
    </div>
    <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
      <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
    </div>
  </body>

</html>