<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html">
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Inicio Sesi�n</title>
		<link rel="stylesheet"  href="/Practica001/css/bootstrap.min.css" type="text/css">
		<link rel="stylesheet" href="/Practica001/css/estilo.css" type="text/css">
	</head>
	<body id="home">
	<div>
	<ul>			
		<li><a href="/Practica001/JSPs/CrearUsuario.jsp">Reg�strate</a></li>
		<li><a href="/Practica001/JSPs/login.jsp">Inicia Sesi�n</a></li>
		<li><a href="/Practica001/JSPs/Invitado.jsp">Buscar en Modo Invitado</a></li>
		<li><a href="/Practica001/JSPs/index.jsp">Home</a></li>			
	</ul>
	</div>
	<center>
		<h1>
			Inicia Sesi�n
		</h1>
		<form class="form-inline" action="/Practica001/LoginUsuario" method="POST">
			<img alt="" src="/Practica001/css/Imagenes/user.png" class="img-circle" height=50px weight=50px>
  			<div class="form-group">
    			<label class="sr-only" for="exampleInputEmail3">Correo</label>
    			<input type="email" class="form-control" id="exampleInputEmail3" placeholder="Correo" name="usu_correo" required>
  			</div>
  			<div class="form-group">
    			<label class="sr-only" for="exampleInputPassword3">Contrase�a</label>
    			<input type="password" class="form-control" id="exampleInputPassword3" placeholder="Contrase�a" name="usu_contrasenia" required>
  			</div>
  				<button name="resp" type="submit" class="btn btn-primary" value="Login">Iniciar Sesi�n</button>
		</form>
	</center>
	</body>
	<footer>
  <p>Posted by: Daniel Peralta</p>
  <p>Contact information: <a href="dperaltat1@est.ups.edu.ec">dperaltat1@est.ups.edu.ec</a></p>
</footer>
</html>