<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="/Practica003/css/estilo.css" type="text/css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<title>Bienvenido</title>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="nav nav-tabs">
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/ControladorSesiones?id=3">Lista de contactos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/Practica003/JSPs/Busquedas.jsp">Buscar</a>
				</li>
			</ul>
		</div>
	</nav>
<c:set var="t1" value="${requestScope['telefono']}"/>
<c:set var="p2" value="${requestScope['usuario'] }"/>

<%/* <h1>Login con exito</h1> */%>
	
	<div>
		<div class="w3-display-topmiddle w3-container">
  		<h1>Bienvenido</h1>
  		<h1> ${ p2.nombre } ${p2.apellido }</h1>
  			<ul>
  				<li><a href="/Practica003/ControladorSesiones?id=2&idU=${p2.cedula }"></a>
  			</ul>
		</div>
		<br>
		<br>
		<br>
		<br>
	</div>
	<div>
		<a href="/Practica003/JSPs/index.jsp">Home</a>
		<a href="/Practica003/JSPs/Busquedas.jsp">Busqueda</a>
		<a href="/Practica003/ControladorSesiones?id=1&c=${p2.cedula }">Agregar Numero</a>
		<a href="/Practica003/LogOut" style="float:right">Sing out</a>
	</div>
	
	
	<table>
	<thead>
		<tr>
			<th><h1>Codigo</h1></th>
			<th><h1>Numero</h1></th>
			<th><h1>Tipo</h1></th>
			<th><h1>Operadora</h1></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="telf" items="${t1}">
			<tr>	
				<td>${telf.telf_id}</td>
				<td>${telf.numero}<a href="tel: ${telf.numero }"></a></td>
				<td>${telf.tipo}</td>
				<td>${telf.operadora}</td>
				<td><a href="/Practica003/EliminarNumero?id=${telf.telf_id}&idUser=${p2.cedula}">Eliminar</a></td>
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