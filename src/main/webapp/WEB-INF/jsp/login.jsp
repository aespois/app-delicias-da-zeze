<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Delícias da Zezé | Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">  
		<div class="col">
	        <form action="/usuario/login" method="post">
	            <h3>Acesso ao Sistema</h3>
	            
	            <div class="form-group">
	              <label for="exampleInputEmail1">Email:</label>
	              <input name="email" type="email" class="form-control" id="exampleInputEmail1">
	            </div>
	            
	            <div class="form-group">
	              <label for="exampleInputPassword1">Senha:</label>
	              <input name="senha" type="password" class="form-control" id="exampleInputPassword1">
	            </div>
	
	            <button type="submit" class="btn btn-primary">Login</button>
	            <button type="button" class="btn btn-outline-success" onclick="location.href='/usuario'">Criar Conta</button>                             
	      	</form>
            <br>
            
            <c:if test="${not empty mensagem}">
	            <div class="alert alert-danger">
			    	<strong>Atenção!</strong> ${mensagem}
			  	</div>
		  	</c:if>			  	
		  	
       </div>
     </div> 
</body>
</html>