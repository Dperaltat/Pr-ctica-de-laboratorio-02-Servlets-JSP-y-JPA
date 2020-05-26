<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Buscar</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
</head>
<body>
	<c:set var="p1" value="${requestScope['telefono']}" />

	<div>
		<h1>Busquedas</h1>
		<h1>
			<a href="/Practica003/controladorSesiones?id=3" id="contact-link">Contactos</a>
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
</html>