<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Delícias da Zezé | Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">
	
		<h2><i class="fa fa-file-code-o" aria-hidden="true"></i> App Delícias da Zezé | Home</h2>	
		<h3><i class="fa fa-user" aria-hidden="true"></i> ${user.nome}</h3>		
		<h4><i class="fa fa-envelope" aria-hidden="true"></i> ${user.email}</h4>		
		<h4><i class="fa fa-github" aria-hidden="true"></i> <a href="${user.git}" target="_blank">Projeto no GitHub</a></h4>
		
		<hr>
		
		<form action="/cliente" method="get">
			<button type="submit" class="btn btn-success">Cliente</button>	
		</form>
		<br>
		<form action="/pedido" method="get">
			<button type="submit" class="btn btn-primary">Pedido</button>	
		</form>
		<br>
		<form action="/" method="get">
			<button type="submit" class="btn btn-danger">Sair</button>	
		</form>
		
	</div>
</body>
</html>