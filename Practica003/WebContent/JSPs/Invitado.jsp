<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listas de telefonos</title>
<link rel="stylesheet"  href="/Practica001/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/Practica001/css/estilo.css" type="text/css">
</head>
<body id="home">
	<div class="login">
	<ul>			
		<li><a href="/Practica001/JSPs/CrearUsuario.jsp">Regístrate</a></li>
		<li><a href="/Practica001/JSPs/login.jsp">Inicia Sesión</a></li>
		<li><a href="/Practica001/JSPs/Invitado.jsp">Buscar en Modo Invitado</a></li>
		<li><a href="/Practica001/JSPs/index.jsp">Home</a></li>			
	</ul>
	</div>	
	
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
<form action="/Practica001/Controlador/ControladorSesion?id=3" method="GET">
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