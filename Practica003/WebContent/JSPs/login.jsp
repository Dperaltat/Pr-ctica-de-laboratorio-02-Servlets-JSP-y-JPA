<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html">
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Inicio Sesión</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		<link rel="stylesheet" href="/Practica003/css/estilo.css" type="text/css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	
	</head>
	
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="nav nav-tabs">	
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/JSPs/index.jsp">Home</a>
				</li>	
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/JSPs/Invitado.jsp">Buscar en Modo Invitado</a>
				</li>	
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/JSPs/CrearUsuario.jsp">Regístrate</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/JSPs/login.jsp">Inicia Sesión</a>
				</li>						
			</ul>
		</div>
	</nav>
	
	<div class="container mt-4 col-lg-4">
		<div class="card col-sm-10">
			<div class="card-body">
					<form class="form-sign" action="/Practica003/Validar" method="POST">
						<div class="form-group ">
							<center>
							<img alt="" src="/Practica003/css/Imagenes/user.png" class="img-circle" height=70 weight=70>
							</center>
						</div>					
  						<div class="form-group">
    						<label class="sr-only" for="exampleInputEmail3">Correo</label>
    						<input type="email" class="form-control" id="exampleInputEmail3" placeholder="Correo" name="correo" required>
  						</div>
  						<div class="form-group">
    						<label class="sr-only" for="exampleInputPassword3">Contraseña</label>
    						<input type="password" class="form-control" id="exampleInputPassword3" placeholder="Contraseña" name="pswd" required>
  						</div>
  						<button name="resp" type="submit" class="btn btn-primary" value="login">Iniciar Sesión</button>
					</form>
			</div>
		</div>
	</div>
</body>
	
<footer>
  <p>Posted by: Daniel Peralta</p>
  <p>Contact information: <a href="dperaltat1@est.ups.edu.ec">dperaltat1@est.ups.edu.ec</a></p>
</footer>
</html>