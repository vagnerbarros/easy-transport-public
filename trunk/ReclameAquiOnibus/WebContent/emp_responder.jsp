<!DOCTYPE html>
<%@page import="reclame.entidades.Empresa"%>
<%@page import="reclame.fachada.Fachada"%>
<%@page import="reclame.entidades.Reclamacao"%>
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
  
  
  <%
  
  Empresa emp = (Empresa) session.getAttribute("empresa_logada");
  List<Reclamacao> reclamacoes = Fachada.getInstance().cadastroReclamacao().listarReclamacoesEmpresa(emp.getId());
  
  %>
  
  <body class="visible-lg visible-md visible-sm visible-xs">
    <div class="navbar navbar-default navbar-static-top navbar-inverse">
      <style>
        .body{padding-top:70px}
      </style>
      <div class="container">
        <div class="navbar-header">
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-left navbar-nav">
           
            <li class="">
              <a href="emp_responder.jsp"><span class="glyphicon glyphicon-file"></span>   Responder reclamação</a>
            </li>
            <li>
              <a href="controlador?acao=logout"><span class="glyphicon glyphicon-off"> SAIR</span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <hr>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="text-primary">Reclamações da Empresa <%=emp.getRazao() %></h2>
          <div class="table-responsive">
            <table id="mytable" class="table table-bordred table-striped">
              <thead>
                <tr>
                  <th>
                     <input type="button" hidden="true"  >
                  </th>
                  <th>Nome do Usuário</th>
                  <th>Rota</th>
                  <th>Reclamação</th>
                  <th>Responder</th>
                 
                </tr>
              </thead>
              <tbody>
              	<% for (Reclamacao rec : reclamacoes){ %>
                <tr>
                  <td>
                    <INPUT TYPE="radio" NAME="OPCAO" VALUE="<%=rec.getId()%>" >
                  </td>
                  <td><%=rec.getUsuario().getNome() %></td>
                  <td><%=rec.getLinha().getNome() %></td>
                  <td><%=rec.getDescricao_reclamacao() %></td>
                  <td>
                    <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button class="btn btn-primary btn-xs" data-title="Responder" data-toggle="modal" data-target="#responder" data-placement="top" rel="tooltip" value="<%=rec.getId() %>">
                                <span class="glyphicon glyphicon-pencil"></span>
                              </button>
                    </p>
                  </td>
                  
                </tr>
                <% } %>
              </tbody>
            </table>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </div>
  <div class="modal fade" id="responder" tabindex="-1" role="dialog" aria-labelledby="responder" aria-hidden="true">
           <form action="controlador" method="post">
            <% for (Reclamacao rec : reclamacoes) { %>
           
       <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title custom_align" id="Heading">Responder reclamação</h4>
                  </div>
                  <div class="modal-body">
                    <div class="form-group">                   
                     Nome do usuário<input class="form-control " readonly="readonly" type="text" value="<%= rec.getUsuario().getNome() %>" >
                    </div>
                    <div class="form-group">
                      Reclamação<input class="form-control " readonly="readonly" type="text" value="<%= rec.getDescricao_reclamacao() %>" >
                    </div>
                    <div class="form-group">
                      Resposta<input class="form-control " type="text" value="" >
                    </div>
                 
                  </div>
         <div class="modal-footer ">
                    <button type="submit" value="responder" class="btn btn-success" style="width: 100%;">
                      <span class="glyphicon glyphicon-ok-sign"></span>&nbsp;Responder</button>
                  </div>
                </div>
                <!-- /.modal-content -->
              </div>
             </form> <!-- /.modal-dialog -->
                  <%} %>
            </div>
    
    
    
    <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
      <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
    </div>
  </body>

</html>