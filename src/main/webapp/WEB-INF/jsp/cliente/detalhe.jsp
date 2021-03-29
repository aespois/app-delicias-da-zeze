<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>App Delícias da Zezé | Cliente</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.12/jquery.mask.min.js"></script>
<script>        
	//Mascara Telefone
	$(document).ready(function(){
	  $('#inputPhone').mask('(99) 99999-9999');
	});          
</script>
</head>
<body>
	<div class="container">
		<h2>Novo Cliente</h2>		
		<form action="/cliente/incluir" method="post">		
			<div class="form-row">	
				<div class="form-group col-md-6">			
				<label>Nome</label>
				<input type="text" class="form-control" name="nome">
				</div>
				
				<div class="form-group col-md-4">			
				<label>Endereço</label>
				<input type="text" class="form-control" name="endereco">
				</div>
				
				<div class="form-group col-md-2">			
				<label>Telefone</label>
				<input type="text" id="inputPhone" class="form-control" name="telefone">
				</div>
			</div>			
			
			<button type="submit" class="btn btn-success">Gravar</button>
			<button type="reset" class="btn btn-outline-primary" onclick="location.href='/home'">Voltar</button>
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
		
		<c:if test="${not empty mensagem}">
            <div class="alert alert-danger">
		    	<strong>Atenção!</strong> ${mensagem}
		  	</div>
	  	</c:if>	
	  	
	  	<footer>
          <hr class="my-4">
          <p style="font-size: smaller" align="center">Delícias da Zezé® - Todos os direitos reservados</p>
      	</footer>  
		
	</div>

</body>
</html>