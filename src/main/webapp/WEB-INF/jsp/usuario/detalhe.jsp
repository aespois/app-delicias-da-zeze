<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>App Delícias da Zezé | Usuário</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div class="container">
		<h2>Novo Usuário</h2>
		
		<form action="/usuario/incluir" method="post">
		
		<div class="form-row">
			<div class="form-group col-md-6">			
			<label>Nome</label>
			<input type="text" class="form-control" name="nome">
			</div>

			<div class="form-group col-md-6">			
			<label>E-mail</label>
			<input type="email" class="form-control" name="email">
			</div>
		</div>
			
		<div class="form-row">
			<div class="form-group col-md-6">			
			<label>Link do Git</label>
			<input type="text" class="form-control" name="git">
			</div>
						
			<div class="form-group col-md-6">			
			<label>Senha</label>
			<input type="password" class="form-control" name="senha">
			</div>
		</div>

			<button type="submit" class="btn btn-success">Gravar</button>
			<button type="reset" class="btn btn-outline-primary" onclick="location.href='/'">Voltar</button>	
		</form>
		
		<br><br>
			
		<c:if test="${not empty usuarios}">
			<p>Listagem de usuários cadastrados</p>            
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>Nome</th>
			      <th>Email</th>
			      <th>Git</th>
			      <th></th>
			    </tr>
			  </thead>
			  <tbody>
			  
			  <c:forEach var="u" items="${usuarios}">
			    <tr>
			      <td>${u.nome}</td>
			      <td>${u.email}</td>
			      <td>${u.git}</td>
			      <td><a href="/usuario/${u.id}/excluir"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
			    </tr>
			  </c:forEach>
			  </tbody>
			</table>	
		</c:if>
		
		<c:if test="${empty usuarios}">
			<p>Nenhum usuário cadastrado!</p>
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