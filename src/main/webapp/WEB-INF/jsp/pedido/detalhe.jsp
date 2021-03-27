<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>App Delícias da Zezé | Pedido</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div class="container">
		<h2>Novo Pedido</h2>
		
		<form action="/pedido/incluir" method="post">
		
			<div class="form-row">
				<div class="form-group col-md-4">			
				<label>Cliente</label><br>
				<select class="form-group col-md-6" name="cliente.id">			
					<c:forEach var="c" items="${clientes}">
						<option value="${c.id}">${c.nome}</option>							
					</c:forEach>
				</select>			
				</div>
			</div>
	
			<div class="form-row">			
				<div class="form-group col-md-6">				
				<label>Produto</label>
				<input type="text" class="form-control" name="nomeProduto">
				</div>
			
				<div class="form-group col-md-2">				
				<label>Quantidade</label>
				<input type="number" class="form-control" name="quantidade">
				</div>
							
				<div class="form-group col-md-4">				
				<label>Data da Entrega</label>
				<input type="datetime-local" class="form-control" name="dataEntrega">
				</div>
			</div>

			<button type="submit" class="btn btn-success">Gravar</button>
			<button type="reset" class="btn btn-outline-primary" onclick="location.href='/home'">Voltar</button>	
			
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
		
		<footer>
          <hr class="my-4">
          <p style="font-size: smaller" align="center">Delícias da Zezé® - Todos os direitos reservados</p>
      	</footer>  
		
	</div>

</body>
</html>