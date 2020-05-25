<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>USUARIO</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		<link rel="stylesheet" href="/Practica003/css/estilo.css" type="text/css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

	</head>
<body>
	<div>
	<ul>
		<li><a href="/Practica001/JSPs/Buscar.jsp">Buscar</a>	
		<li><a href="/Practica001/JSPs/Agregar.jsp">Agregar Datos</a>		
		<li><a href="/Practica001/JSPs/login.jsp">Cerrar Sesión</a></li>		
	</ul>
	</div>
	
	<c:set var="t1" value="${requestScope['telefono']}"/>
	<c:set var="p2" value="${requestScope['usuario'] }"/>

<%/* <h1>Login con exito</h1> */%>
	
	<div>
		<div>
  		<h1>Bienvenido ${p2.usu_nombre}</h1>

	<div>
		<div>
  			<h1> ${p2.usu_nombre} ${p2.usu_apellido}</h1>
  			<ul>
  				<li><a href="/Practica001/ControladorSesion?id=2&idU=${p2.usu_id}"></a>
  			</ul>
		</div>
	</div>
		
	<table class="table">
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
				<td>${t1.tel_id}</td>
				<td>${t1.tel_numero}</td>
				<td>${t1.tel_tipo}</td>
				<td>${t1.tel_operadora}</td>
				<td><a href="/Practica001/EliminarNumero?id=${t1.tel_id}&idUser=${p2.usu_id}">Eliminar</a></td>
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