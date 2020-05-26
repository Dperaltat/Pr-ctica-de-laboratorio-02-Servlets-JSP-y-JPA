<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Invitado</title>

</head>
<body>

<form action="/Practica003/src/controlador/controladorSesiones?id=3" method="GET">
<c:set var="t1" value="${requestScope['telefonos']}"/>

	
	<div>
  		<h1>Lista de telefonos</h1>
	</div>
	<div>
		<a href="/Practica003/JSPs/index.jsp">Home</a>
	</div>

	<table>
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
				<td>${telf.numero}<a href="tel: ${telf.numero }"></a></td>
				<td>${telf.tipo}</td>
				<td>${telf.operadora}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
</form>
</body>
</html>