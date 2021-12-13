<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Articulos</title>
<script src="resources/js/bootstrap.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>	
</head>
<body>
<div class="p-3 mb-2 bg-success text-white"></div>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">PROYECT</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
           <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Clientes
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="nav-link active" aria-current="page" onclick="window.location.href='lista'; return false;">Lista Clientes</a>
            <a class="nav-link active" aria-current="page" onclick="window.location.href='muestraFormularioAgregar'; return false;">Formulario Clientes</a>
      
          </ul>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Pedidos
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            
      <a class="nav-link active" aria-current="page" onclick="window.location.href='/GestionPedidos/pedido/listapedido'; return false;">Lista Pedido</a>
            <a class="nav-link active" aria-current="page" onclick="window.location.href=''; return false;">Formulario Pedido</a>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Articulos</a>
          <a class="nav-link active" aria-current="page" onclick="window.location.href='lista-Articulos'; return false;">Lista PedidosClientes</a>
            

        </li>
       
      </ul>
    </div>
  </div>
</nav>

           

<div class="p-3 mb-2 bg-success text-white">
<h1>Bienvenidos al Proyecto</h1>
<center>
<img src="${pageContext.request.contextPath}/resources/images/pajaro.jpg">
<img src="/GestionPedidos/resources/images/pajaro.jpg">
</center>
<table border="1">
  <tr>
    <td>Nombre</td>
    <td>Apellidos</td>
    <td>Email</td>
    <td>Modificar</td>
    <td>Eliminar</td>
 </tr>

  <c:forEach var="clienteTemp"  items="${clientes}">

     <!--  link para actualizar  -->
     <c:url var="linkActualizar" value="/cliente/muestraFormularioActualizar">  <!-- nos lleva a la url al modificar-->
     <c:param name="clienteId" value="${clienteTemp.id}"/>   <!--  el parámetro que le pasamos a la url -->
    </c:url>
    
     <!--  link para eliminar  -->
     <c:url var="linkEliminar" value="/cliente/eliminar">  <!-- nos lleva a la url eliminar-->
     <c:param name="clienteId" value="${clienteTemp.id}"/>   <!--  el parámetro que le pasamos a la url -->
    </c:url>
    
  <tr>
      <td>${clienteTemp.nombre}</td>
      <td>${clienteTemp.apellido}</td>
      <td>${clienteTemp.email}</td>
      <td><a href="${linkActualizar}"><input type="button" value="Modificar"/></a></td>
      <td><a href="${linkEliminar}"><input type="button" value="Eliminar"  
             onclick="if(!(confirm('vas a eliminar un registro. Estás seguro?')))  return false;"/></a></td>
  </tr>
</c:forEach>
</table>

<br>
<center>
<input type="button" value="Agregar Cliente" onclick="window.location.href='muestraFormularioAgregar'; return false;"/>
</center>
</div>

</body>
</html>