<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Buscar</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		<link rel="stylesheet" href="/Practica003/css/estilo.css" type="text/css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	
	</head>
<body>
	<div class="login">
	<ul>			
		<li><a href="/Practica001/JSPs/Agregar.jsp">Agregar Datos</a>			
		<li><a href="/Practica001/JSPs/login.jsp">Cerrar Sesión</a></li>
		<li><a href="/Practica001/ControladorSesion?id=2&ced=${p1.usu_id}">Mi Cuenta</a></li>		
	</ul>
	</div>
	<div>
		<h1>Busquedas</h1>
	</div>
	<br>
<form action="/Practica001/Buscar?id=1" method="POST">
	  		<h1>Busca por el número de Cedula</h1>
  <div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control">
      <span class="input-group-btn">
        <button class="btn btn-primary" name="buscarCorreo" value="correoB" type="submit">Buscar</button>
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
        <button class="btn btn-primary" name="buscarCed" value="cedulaB" type="submit">Buscar</button>
      </span>
    </div>
  </div>
</form>
<table class="container">
	<thead>
			<tr>
				<th>Nombre</th>
				<th>Correo</th>
				<th>Tipo</th>
				<th>Operadora</th>
				<th>Número</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="telf" items="${p1}">
				<tr>

					<td>${telf.correo}
					<td>${telf.tipo}</td>
					<td>${telf.operadora}</td>
					<td>${telf.numero}
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