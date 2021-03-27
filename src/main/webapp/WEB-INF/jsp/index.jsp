<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>App Delícias da Zezé | Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">
	
		<div class="jumbotron">
			<h2>App Delícias da Zezé | Home</h2>
            <h3><i class="fa fa-user" aria-hidden="true"></i> ${user.nome}</h3>		
			<h4><i class="fa fa-envelope" aria-hidden="true"></i> ${user.email}</h4>		
			<h4><i class="fa fa-github" aria-hidden="true"></i> <a href="${user.git}" target="_blank">Projeto no GitHub</a></h4>
        </div>

		<div class="form-row" align="center">
			<div class="form-group col-md-4">	
			<form action="/cliente" method="get">
				<button type="submit" class="btn btn-success btn-lg">Cliente</button>	
			</form>
			</div>
			
			<div class="form-group col-md-4">	
			<form action="/pedido" method="get">
				<button type="submit" class="btn btn-primary btn-lg">Pedido</button>	
			</form>
			</div>
			
			<div class="form-group col-md-4">	
			<form action="/" method="get">
				<button type="submit" class="btn btn-outline-danger btn-lg">Sair</button>	
			</form>
			</div>
		</div>
			
		<footer>
          <hr class="my-4">
          <p style="font-size: smaller" align="center">Delícias da Zezé® - Todos os direitos reservados</p>
      	</footer>      
      
	</div>
</body>
</html>