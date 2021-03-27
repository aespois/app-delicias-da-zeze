<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>App Del�cias da Zez� | Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">  
	
		<div class="jumbotron">
            <h1 class="display-4">App Del�cias da Zez�</h1>
            <p class="lead">As maiores del�cias de Saquarema agora na sua casa!</p><hr class="my-4">
            <button type="button" class="btn btn-success btn-lg" onclick="location.href='/usuario'">Fa�a seu cadastro</button>
        </div>
	
		<div class="row">
			<div class="col">
		        <form action="/usuario/login" method="post">
		            <h3>Acesso ao Sistema</h3>
		            
		            <div class="form-group">
		              <label for="exampleInputEmail1">Email</label>
		              <input name="email" type="email" class="form-control" id="exampleInputEmail1">
		            </div>
		            
		            <div class="form-group">
		              <label for="exampleInputPassword1">Senha</label>
		              <input name="senha" type="password" class="form-control" id="exampleInputPassword1">
		            </div>
		
		            <button type="submit" class="btn btn-primary">Login</button>
		            <button type="button" class="btn btn-outline-success" onclick="location.href='/usuario'">Criar Conta</button>                             
		      	</form><br>
		      		            
	            <c:if test="${not empty mensagem}">
		            <div class="alert alert-danger">
				    	<strong>Aten��o!</strong> ${mensagem}
				  	</div>
			  	</c:if>			  	
			  	
	       </div>
		</div>
		
       <footer>
          <hr class="my-4">
          <p style="font-size: smaller" align="center">Del�cias da Zez� - Todos os direitos reservados</p>
      </footer>
            
	</div> 
</body>
</html>