<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Delícias da Zezé | Cliente</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div class="container">
		<h2>Novo Cliente</h2>
		
		<form action="/cliente/incluir" method="post">
		
			<div class="form-group">			
			<label>Nome Completo:</label>
			<input type="text" class="form-control" name="nome">
			</div>
			
			<div class="form-group">			
			<label>Endereço:</label>
			<input type="text" class="form-control" name="endereco">
			</div>
			
			<div class="form-group">			
			<label>Telefone:</label>
			<input type="text" class="form-control" name="telefone">
			</div>

			<button type="submit">Gravar</button>
		</form>
		
		<br>

		<form action="/home">
			<button type="submit">Voltar</button>	
		</form>
		
		<br><br>
			
		<c:if test="${not empty clientes}">
			<p>Listagem de clientes cadastrados</p>            
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>Nome</th>
			      <th>Endereço</th>
			      <th>Telefone</th>
			      <th></th>
			    </tr>
			  </thead>
			  <tbody>
			  
			  <c:forEach var="c" items="${clientes}">
			    <tr>
			      <td>${c.nome}</td>
			      <td>${c.endereco}</td>
			      <td>${c.telefone}</td>
			      <td><a href="/cliente/${c.id}/excluir"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
			    </tr>
			  </c:forEach>
			  </tbody>
			</table>	
		</c:if>
		
		<c:if test="${empty clientes}">
			<p>Nenhum cliente cadastrado!</p>
		</c:if>
		
	</div>

</body>
</html>