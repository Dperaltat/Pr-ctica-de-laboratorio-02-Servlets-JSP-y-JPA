<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bienvenido</title>

</head>
<body>
<c:set var="t1" value="${requestScope['telefono']}"/>
<c:set var="p2" value="${requestScope['usuario'] }"/>

<%/* <h1>Login con exito</h1> */%>
	
	<div>
		<div class="w3-display-topmiddle w3-container">
  		<h1>Bienvenido</h1>
  		<h1> ${ p2.nombre } ${p2.apellido }</h1>
  			<ul>
  				<li><a href="/Practica003/controladorSesiones?id=2&idU=${p2.cedula }"></a>
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
		<a href="/Practica003/controladorSesiones?id=1&c=${p2.cedula }">Agregar Numero</a>
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
</html>