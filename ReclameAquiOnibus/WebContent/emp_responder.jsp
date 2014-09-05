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
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-left navbar-nav">
            <li>
              <a href="emp_home.jsp"><span class="glyphicon glyphicon-star"></span>   Início</a>
            </li>
            <li class="">
              <a href="emp_responder.jsp"><span class="glyphicon glyphicon-file"></span>   Responder reclamação</a>
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
        <div class="col-md-12">
          <hr>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="text-primary">Reclamações</h2>
          <div class="table-responsive">
            <table id="mytable" class="table table-bordred table-striped">
              <thead>
                <tr>
                  <th>
                    <input type="checkbox" id="checkall">
                  </th>
                  <th>Nome do usuário</th>
                  <th>Ônibus</th>
                  <th>Rota</th>
                  <th>Reclamação</th>
                  <th>Responder</th>
                  <th>Pendente</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <input type="checkbox" class="checkthis">
                  </td>
                  <td>Mohsin</td>
                  <td>Mohsin</td>
                  <td>Irshad</td>
                  <td>bla bal bal bal bal</td>
                  <td>
                    <p>
                      <button class="btn btn-success btn-xs" data-title="responder" data-toggle="modal"
                      data-target="#responder" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-pencil"></span>
                      </button>
                    </p>
                  </td>
                  <td>
                    <p>
                      <button class="btn btn-warning btn-xs" data-title="pendente" data-toggle="modal"
                      data-target="#pendente" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-trash"></span>
                      </button>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <input type="checkbox" class="checkthis">
                  </td>
                  <td>Mohsin</td>
                  <td>Mohsin</td>
                  <td>Irshad</td>
                  <td>bla bal bal bal bal</td>
                  <td>
                    <p>
                      <button class="btn btn-success btn-xs" data-title="responder" data-toggle="modal"
                      data-target="#responder" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-pencil"></span>
                      </button>
                    </p>
                  </td>
                  <td>
                    <p>
                      <button class="btn btn-warning btn-xs" data-title="pendente" data-toggle="modal"
                      data-target="#pendente" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-trash"></span>
                      </button>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <input type="checkbox" class="checkthis">
                  </td>
                  <td>Mohsin</td>
                  <td>Mohsin</td>
                  <td>Irshad</td>
                  <td>bla bal bal bal bal</td>
                  <td>
                    <p>
                      <button class="btn btn-success btn-xs" data-title="responder" data-toggle="modal"
                      data-target="#responder" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-pencil"></span>
                      </button>
                    </p>
                  </td>
                  <td>
                    <p>
                      <button class="btn btn-warning btn-xs" data-title="pendente" data-toggle="modal"
                      data-target="#pendente" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-trash"></span>
                      </button>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <input type="checkbox" class="checkthis">
                  </td>
                  <td>Mohsin</td>
                  <td>Mohsin</td>
                  <td>Irshad</td>
                  <td>bla bal bal bal bal</td>
                  <td>
                    <p>
                      <button class="btn btn-success btn-xs" data-title="responder" data-toggle="modal"
                      data-target="#responder" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-pencil"></span>
                      </button>
                    </p>
                  </td>
                  <td>
                    <p>
                      <button class="btn btn-warning btn-xs" data-title="pendente" data-toggle="modal"
                      data-target="#pendente" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-trash"></span>
                      </button>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <input type="checkbox" class="checkthis">
                  </td>
                  <td>Mohsin</td>
                  <td>Mohsin</td>
                  <td>Irshad</td>
                  <td>bla bal bal bal bal</td>
                  <td>
                    <p>
                      <button class="btn btn-success btn-xs" data-title="responder" data-toggle="modal"
                      data-target="#responder" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-pencil"></span>
                      </button>
                    </p>
                  </td>
                  <td>
                    <p>
                      <button class="btn btn-warning btn-xs" data-title="pendente" data-toggle="modal"
                      data-target="#pendente" data-placement="top" rel="tooltip">
                        <span class="glyphicon glyphicon-trash"></span>
                      </button>
                    </p>
                  </td>
                </tr>
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
    <div class="modal fade" id="responder" tabindex="-1" role="dialog" aria-labelledby="responder"
    aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title custom_align" id="Heading">Responder reclamação</h4>
          </div>
          <div class="modal-body">
            <div class="form-group" draggable="false">
              <h5>Nome do usuário</h5>
              <input class="form-control " enable="true" type="text"
              placeholder="Mohsin">
            </div>
            <div class="form-group">
              <h5>Ônibus</h5>
              <input class="form-control " enable="false" type="text" placeholder="Irshad">
            </div>
            <div class="form-group" draggable="true">
              <h5>Rota</h5>
              <input class="form-control " enable="false" type="text" placeholder="Irshad">
            </div>
            <div class="form-group" draggable="true">
              <h5>Reclamação</h5>
              <textarea rows="2" enable="false" class="form-control"
              placeholder="bla bla bal bla bla"></textarea>
            </div>
            <div class="form-group" draggable="true">
              <h5 class="text-success">Resposta da empresa</h5>
              <textarea rows="2" class="form-control" placeholder="Responda a reclamação aqui"></textarea>
            </div>
          </div>
          <div class="modal-footer ">
            <button type="button" class="btn btn-lg btn-success" style="width: 100%;">
              <span class="glyphicon glyphicon-ok-sign">Responder</span>
            </button>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
    <div class="modal fade" id="pendente" tabindex="-1" role="dialog" aria-labelledby="pendente"
    aria-hidden="true" draggable="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title custom_align" id="Heading">Reclamações pendentes</h4>
          </div>
          <div class="modal-body">
            <div class="alert alert-warning">
              <span class="glyphicon glyphicon-warning-sign"></span>Tem certeza que deseja colocar essa reclamação em pendência ?</div>
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
    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit"
    aria-hidden="true">
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
    <div class="navbar navbar-default navbar-fixed-bottom navbar-inverse">
      <h4 class="text-center">© 2013 - 2014 EasyTrans - Todos os direitos reservados.</h4>
    </div>
  </body>

</html>