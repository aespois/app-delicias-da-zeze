<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>app sdi noite</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	
		Tela CADASTRO >>> <a href="/">home</a>
		
		<form action="/pessoa/incluir" method="post">
		
			<div class="form-group">			
			<label>Informe o seu nome</label>
			<input type="text" class="form-control" name="nome">
			</div>

			<div class="form-group">			
			<label>Informe o seu e-mail</label>
			<input type="email" class="form-control" name="email">
			</div>
						
			<div class="form-group">			
			<label>Informe o seu salário</label>
			<input type="text" class="form-control" name="salario">
			</div>

			<div class="form-group">			
			<label>Informe a sua quantidade de meses</label>
			<input type="text" class="form-control" name="qtdeMeses">
			</div>

			<button type="submit">Gravar</button>	
		</form>
		
	</div>
</body>
</html>