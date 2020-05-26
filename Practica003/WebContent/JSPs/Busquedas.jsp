<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Buscar</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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
	<c:set var="p1" value="${requestScope['telefono']}" />

	<div>
		<h1>Busquedas</h1>
		<h1>
			<a href="/Practica003/ControladorSesiones?id=3" id="contact-link">Contactos</a>
		</h1>
	</div>
	<div>
		<a href="/Practica003/JSPs/index.jsp">Home</a>
		<form action="/Practica003/Buscar?id=1" method="POST">
		<a><input type="text" class="form-control" name="correo"
				placeholder="Buscar por correo....."></a>
		<a><button class="input-group-text" name="buscarCorreo" value="correoB"
					type="submit">Buscar</button></a>
		</form>

		<form action="/Practica003/Buscar?id=2" method="POST">	
		<a><input type="text" class="form-control" name="cedula"
				placeholder="Buscar por cedula....."></a>		
		<a><button class="input-group-text" name="buscarCed" value="cedulaB" type="submit">Buscar</button></a>
		
	</form>
	</div>
	


	<table>
		<thead>
			<tr>
				<th>Email</th>
				<th>Tipo</th>
				<th>Operadora</th>
				<th>Numero</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="telf" items="${p1}">
				<tr>

					<td>${telf.correo}<a href="mailto:${telf.correo }"></a></td>
					<td>${telf.tipo}</td>
					<td>${telf.operadora}</td>
					<td>${telf.numero}<a href="tel: ${telf.numero }"></a>
					</td>
				</tr>

			</c:forEach>
		</tbody>
	</table>
</body>
<footer>
 		<p>Posted by: Daniel Peralta</p>
  		<p>Contact information: <a href="dperaltat1@est.ups.edu.ec">dperaltat1@est.ups.edu.ec</a></p>
</footer>
</html>