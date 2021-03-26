<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Delícias da Zezé | Pedido</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div class="container">
		<h2>Novo Pedido</h2>
		
		<form action="/pedido/incluir" method="post">
		
			<div class="form-group">			
			<label>Escolha o Cliente:</label><br>
			<select class="form-group" name="cliente.id">			
				<c:forEach var="c" items="${clientes}">
					<option value="${c.id}">${c.nome}</option>							
				</c:forEach>
			</select>			
			</div>
		
			<div class="form-group">			
			<label>Escolha o Produto:</label>
			<input type="text" class="form-control" name="nomeProduto">
			</div>

			<div class="form-group">			
			<label>Digite a Quantidade:</label>
			<input type="number" class="form-control" name="quantidade">
			</div>
						
			<div class="form-group">			
			<label>Informe a Data para Entrega:</label>
			<input type="datetime-local" class="form-control" name="dataEntrega">
			</div>

			<button type="submit">Gravar</button>
		</form>
		
		<br>

		<form action="/home">
			<button type="submit">Voltar</button>	
		</form>
		
		<br><br>
			
		<c:if test="${not empty pedidos}">
			<p>Listagem de pedidos cadastrados</p>            
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>Quantidade</th>
			      <th>Produto</th>	
			      <th>Cliente</th>		      			      
			      <th>Entrega</th>			      
			      <th></th>
			    </tr>
			  </thead>
			  <tbody>
			  
			  <c:forEach var="p" items="${pedidos}">
			    <tr>
		    	  <td>${p.quantidade}</td>
			      <td>${p.nomeProduto}</td>			      
			      <td>${p.cliente.nome}</td>
			      <td>${p.dataEntrega}</td>
			      
			      <td><a href="/pedido/${p.id}/excluir"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
			    </tr>
			  </c:forEach>
			  </tbody>
			</table>	
		</c:if>
		
		<c:if test="${empty pedidos}">
			<p>Nenhum pedido cadastrado!</p>
		</c:if>
		
	</div>

</body>
</html>