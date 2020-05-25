<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Listas de telefonos</title>
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
	
	<form action="/Practica001/Buscar?id=1" method="POST">
	  	<h1>Busca por el número de Cedula</h1>
  <div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control">
      <span class="input-group-btn">
        <button class="btn btn-primary" name="buscarCorreo" value="correoB" type="button">Buscar</button>
      </span>
    </div>
  </div>
</form>
<br>
<form action="/Practica001/Buscar?id=2" method="POST">
  		<h1>Busca por el número de Correo</h1>
  <div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control">
      <span class="input-group-btn">
        <button class="btn btn-primary" name="buscarCed" value="cedulaB" type="button">Buscar</button>
      </span>
    </div>
  </div>
</form>
<form action="/Practica003/Controlador/ControladorSesion?id=3" method="GET">
<c:set var="t1" value="${requestScope['telefono']}"/>
	
	<table class="table">
	<thead>
		<tr>
			<th><h1>Cedula</h1></th>
			<th><h1>Numero</h1></th>
			<th><h1>Tipo</h1></th>
			<th><h1>Operadora</h1></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="telf" items="${t1}">
			<tr>
				<td>${telf.codigo}</td>
				<td>${telf.numero}</td>
				<td>${telf.tipo}</td>
				<td>${telf.operadora}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
</form>


</body>
<footer>
  <p>Posted by: Daniel Peralta</p>
  <p>Contact information: <a href="dperaltat1@est.ups.edu.ec">dperaltat1@est.ups.edu.ec</a></p>
</footer>
</html>