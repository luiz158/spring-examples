<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Agenda pessoal é uma agenda online para organizar sua vida.">
	<meta name="keywords" content="agenda, organização pessoal, produtividade">
	<meta name="author" content="[Seu nome aqui]">
	
	<title>Entradas :: Agenda Pessoal</title>
	
	<!-- Bootstrap core CSS -->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="bootstrap/css/bootswatch.min.css" rel="stylesheet">
	<link href="css/agenda.css" rel="stylesheet">
	<link rel="shortcut icon" type="image/png" href="favicon.png"/>
	
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<!-- BARRA DE MENU -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Navegação</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home.html">Agenda Pessoal</a>
        </div>
        <div class="collapse navbar-collapse">
       	  <ul class="nav navbar-nav">
            <li class="active"><a href="entradas.html">Entradas</a></li>
            <li><a href="sobre.html">Sobre</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
          	<li><p class="navbar-text">Bom dia, Luiz!</p></li>
            <li><a href="home.html">Sair <span class="glyphicon glyphicon-log-out"></span></a></li>
          </ul>
        </div>
      </div>
    </div>

	<!-- CONTEÚDO -->
    <div class="container-fluid full-height">
      
      <div class="row-fluid full-height">
      	<div class="col-lg-3 col-md-12">
      	
	      	<!-- Filtro de pesquisa -->
	        <form id="form-filtro" class="well" role="form">
		      <div class="row">
		        <div class="col-lg-12 col-md-3 col-sm-12">
		        	<div class="form-group">
				      <label class="control-label col-sm-2 col-md-2 col-lg-12">De</label>
				      <div class="col-sm-4 col-md-10 col-lg-12">
				        <input type="date" class="form-control input-sm" id="filtro-de" name="filtro-de">
 				      </div>
 				     </div>
				    </div>
		        <div class="col-lg-12 col-md-3 col-sm-12">
		        	<div class="form-group">
				      <label class="control-label col-sm-2 col-md-2 col-lg-12">Até</label>
				      <div class="col-sm-4 col-md-10 col-lg-12">
				      	<input type="date" class="form-control input-sm" id="filtro-ate" name="filtro-ate">
				      </div>
				    </div>
				</div>
		        <div class="col-lg-12 col-md-4 col-sm-12">
		        	<div class="form-group">
			 	        <label class="col-sm-2 col-md-3 col-lg-12">Descrição</label>
			 	        <div class="col-sm-10 col-md-9 col-lg-12">
					      <input type="text" class="form-control input-sm" id=filtro-descricao placeholder="Pesquisar descrição" name="filtro-descricao">
					    </div>
				    </div>
				</div>
		        <div class="col-lg-12 col-md-2 col-sm-12">
		        	<div class="form-group">
						<div class="btn-group btn-group-sm col-lg-12">
						  <button type="submit" id="filtrar" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span></button>
						  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
						    <span class="caret"></span>
						    <span class="sr-only">Opções</span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a class="text-center" href="#">Limpar filtros</a></li>
						  </ul>
						</div>
					</div>
				</div>
		      </div>
			</form>
		</div>

		<div class="col-lg-9 col-md-12 full-height">	
	      	<h2>Entradas da agenda <a href="editar-entrada.html" class="btn btn-success pull-right">Nova Entrada <span class="glyphicon glyphicon-plus"></span></a></h2>
	      	
	        <!-- <table class="table table-striped table-hover table-bordered table-condensed"> -->
	        <table class="table table-hover table-bordered ">
	          <thead>
	            <tr>
	              <th class="text-center coluna-codigo">#</th> <!-- Código -->
	              <th class="text-left coluna-data"><a href="#data">Data 
					  <span class="glyphicon glyphicon-sort-by-attributes"></span>
				  </a></th> 
	              <th class="text-left coluna-descricao"><a href="#desc">Descrição
					  <span class="glyphicon glyphicon-sort-by-attributes-alt"></span> 
	              </a></th>
			   	  <th class="text-right coluna-acao"></th>
	            </tr>
	          </thead>
	          <tbody>
	            <tr>
	              <td class="text-center">1</td>
	              <td>13/10/2014 22:00</td>
	              <td>Jantar com amigos</td>
	              <td class="text-right">
			        <a href="editar-entrada.html" title="Editar Entrada" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
	   				<a href="#" title="Excluir Entrada" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
	              </td>
	            </tr>
	            <tr class="warning">
	              <td class="text-center">2</td>
	              <td>13/10/2014 22:00</td>
	              <td>Aniversário de casamento</td>
	              <td class="text-right">
			        <a href="editar-entrada.html" title="Editar Entrada" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
	   				<a href="#" title="Excluir Entrada" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
	              </td>
	            </tr>
	            <tr class="danger">
	              <td class="text-center">3</td>
	              <td>13/10/2014 22:00</td>
	              <td>Jantar com amigos</td>
	              <td class="text-right">
			        <a href="editar-entrada.html" title="Editar Entrada" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
	   				<a href="#" title="Excluir Entrada" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
	              </td>
	            </tr>
	            <tr class="success">
	              <td class="text-center">4</td>
	              <td>13/10/2014 22:00</td>
	              <td>Jantar com amigos</td>
	              <td class="text-right">
			        <a href="editar-entrada.html" title="Editar Entrada" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
	   				<a href="#" title="Excluir Entrada" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
	              </td>
	            </tr>
	            <tr>
	              <td class="text-center">5</td>
	              <td>13/10/2014 22:00</td>
	              <td>Jantar com amigos</td>
	              <td class="text-right">
			        <a href="editar-entrada.html" title="Editar Entrada" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
	   				<a href="#" title="Excluir Entrada" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
	              </td>
	            </tr>
	            <tr>
	              <td class="text-center">6</td>
	              <td>13/10/2014 22:00</td>
	              <td>Jantar com amigos</td>
	              <td class="text-right">
			        <a href="editar-entrada.html" title="Editar Entrada" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
	   				<a href="#" title="Excluir Entrada" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
	              </td>
	            </tr>
	            <tr>
	              <td class="text-center">7</td>
	              <td>13/10/2014 22:00</td>
	              <td>Jantar com amigos</td>
	              <td class="text-right">
			        <a href="editar-entrada.html" title="Editar Entrada" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
	   				<a href="#" title="Excluir Entrada" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span></a>
	              </td>
	            </tr>
	          </tbody>
	        </table>
	     </div>    
	  </div>

    </div> <!-- /container -->
    
    <footer>
      <hr>
      <p>&copy; [Sua Empresa] 2014</p>
    </footer>
	
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/agenda.js"></script>
</body>
</html>
