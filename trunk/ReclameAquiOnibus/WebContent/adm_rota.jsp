<!DOCTYPE html>
<%@page import="reclame.entidades.Rota"%>
<%@page import="java.awt.Robot"%>
<%@page import="reclame.fachada.Fachada"%>
<%@page import="reclame.entidades.Empresa"%>
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
  List<Empresa> empresas = Fachada.getInstance().cadastroEmpresa().listar();
  %>
  
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
              <a href="adm_usuario.jsp"><span class="glyphicon glyphicon-flash"></span>   Usuário</a>
            </li>
            <li>
              <a href="adm_onibus.jsp"><span class="glyphicon glyphicon-road"></span>   Ônibus</a>
            </li>
            <li>
              <a href="adm_empresa.jsp"><span class="glyphicon glyphicon-tasks">   Empresa</span></a>
            </li>
            <li class="active">
              <a href="adm_rota.jsp"><span class="glyphicon glyphicon-flag"> Rota</span></a>
            </li>
            <li>
              <a href="controlador?acao=logout"><span class="glyphicon glyphicon-off"> SAIR</span></a>
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
            <form action="controlador" method="POST" class="form-horizontal" draggable="true">
            	<input type="hidden" name="acao" value="cadastrar_rota" />
              <fieldset>
                <!-- Form Name -->
                <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="nome">Nome da Rota:</label>
                  <div class="col-md-6">
                    <input id="nome" name="rota" type="text" placeholder="Digite o nome da rota"
                    class="form-control input-md" required="">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-4 control-label" for="senha">Empresa:</label>
                  <div class="col-md-6">
                  	<select id="empresa" name="empresa" class="form-control input-md" required="">
                  		<% for(Empresa emp : empresas){ %>
  						<option value="<%=emp.getId() %>"><%=emp.getRazao() %></option>	   
  						<%} %>             	
                  	</select>
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
          List<Rota> rotas = Fachada.getInstance().cadastroRota().listar();
          
          %>
          
          <div class="tab-pane" id="tab2">
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
            <script src="http://templateplanet.info/tooltip.js"></script>
            <script src="http://templateplanet.info/modal.js"></script>
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <h4>Rotas Cadastradas</h4>
                  <div class="table-responsive">
                    <table id="mytable" class="table table-bordred table-striped">
                      <thead>
                        <tr>
                          <th>
                          <input type="button" hidden="true"  >
                          </th>
                          <th>Nome da Rota</th>
                          <th>Empresa</th>
                          <th>Edit</th>
                          <th>Delete</th>
                        </tr>
                      </thead>
                      <tbody>
                      <% for (Rota r : rotas){ %>
                        <tr>
                          <td>
                             <INPUT TYPE="radio" NAME="OPCAO" VALUE="<%=r.getId()%>" >
                          </td>
                          <td><%=r.getNome() %></td>
                          <td><%=r.getEmpresa().getRazao() %></td>
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
            
             <form action="controlador" method="post">
             <%   for (Rota r : rotas) {
          %>
            
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title custom_align" id="Heading">Editar</h4>
                  </div>
                  <div class="modal-body">
                     <div class="form-group">                   
                     Nome da Rota<input class="form-control " type="text" value="<%=r.getNome() %>" >
                    </div>
                    <div class="form-group">
                      Empresa<input class="form-control " type="text" value="<%= r.getEmpresa().getRazao() %>" >
                    </div>
                    
                  </div>
                  <div class="modal-footer ">
                   <button type="submit" value="editar" class="btn btn-warning btn-lg" style="width: 100%;">
                      <span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Atualizar dados</button>
                  </div>
                </div>
                <!-- /.modal-content -->
              </div>
              </form><%} %>
            </div>
            <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            
             <form action="controlador" method="post">
             <%   for (Rota r : rotas) {
          %>
            
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title custom_align" id="Heading">Excluir</h4>
                  </div>
                  <div class="modal-body">
                    
                     <div class="form-group">
                      Nome da Rota<input class="form-control"  type="text" readonly="readonly" value="<%=r.getNome() %>" >
                      Empresa<input class="form-control" type="text" readonly="readonly" value="<%=r.getEmpresa().getRazao() %>" >
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
              <!-- /.modal-dialog -->
          </form><%} %>   </div>
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