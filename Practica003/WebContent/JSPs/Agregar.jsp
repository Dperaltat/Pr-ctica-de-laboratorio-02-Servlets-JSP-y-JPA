<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar y Editar</title>
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
					<a class="nav-link" href="/Practica003/JSPs/CrearUsuario.jsp">Registrarse</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/JSPs/login.jsp">Iniciar Sesión</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/ControladorSesiones?id=3">Lista de contactos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/JSPs/Busquedas.jsp">Buscar</a>
				</li>
			</ul>
		</div>
	</nav>

	<c:set var="p1" value="${ requestScope['usuario'] }" />
	<c:set var="p2" value="${ requestScope['idc'] }" />

<div>
	<h1>Agregar número</h1>

</div>
<div>
	<a href="/Practica003/JSPs/index.jsp">Home</a> <a
		href="/Practica003/controladorSesiones?id=2&ced=${p1.cedula}">Mi
		Cuenta</a> <a href=""></a> <a href="" style="float: right">Sing out</a>
</div>
<div>
	<form action="/Practica003/AgregarNumero?ced=${p2 }"
		method="POST">

		<h1>Agregar teléfono:</h1>

		<label for="numero" class="mb-2 mr-sm-2">Número: </label> <input
			type="number" name="numero" placeholder="numero" maxlength="10">

		<label for="operadora">Operadora: </label> <input type="text"
			name="operadora" placeholder="operadora"> <label for="tipo">Tipo:</label>
		<input type="text" name="tipo" placeholder="tipo">

		<button type="submit" name="agregar" value="ingresar"
			class="btn btn-primary mb-2">Ingresar</button>
	</form>
</div>
</body>
<footer>
 		<p>Posted by: Daniel Peralta</p>
  		<p>Contact information: <a href="dperaltat1@est.ups.edu.ec">dperaltat1@est.ups.edu.ec</a></p>
</footer>
</html>