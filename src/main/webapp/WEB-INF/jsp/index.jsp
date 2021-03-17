<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index - AppTp3AnaEspois</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

	<div class="container">
	
		<h2><i class="fa fa-file-code-o" aria-hidden="true"></i> TP3</h2>		
		<h3><i class="fa fa-user" aria-hidden="true"></i> ${nome}</h3>		
		<h4><i class="fa fa-envelope" aria-hidden="true"></i> ${email}</h4>		
		<p><i class="fa fa-github" aria-hidden="true"></i> <a href="${git}">Projeto no GitHub</a></p>
		
		<form action="/usuario" method="get">
			<button type="submit">Novo usuário</button>	
		</form>
		
	</div>
</body>
</html>