<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>
<h1>Bienvenidos al Proyecto</h1>

<center>
<img src="${pageContext.request.contextPath}/resources/images/pajaro.jpg">
<img src="/GestionPedidos/resources/images/pajaro.jpg">
</center>
<table border="1">
  <tr>
    <td>numpedido</td>
    <td>fecha</td>
    <td>importe</td>
    <td>descuento</td>
    
 </tr>

  <c:forEach var="PedidosTemp"  items="${pedidos}">

     <!--  link para actualizar  -->
     <c:url var="linkActualizar" value="/pedidos/muestraFormularioActualizar">  <!-- nos lleva a la url al modificar-->
     <c:param name="clienteId" value="${PedidosTemp.id}"/>   <!--  el par?metro que le pasamos a la url -->
    </c:url>
    
     <!--  link para eliminar  -->
     <c:url var="linkEliminar" value="/cliente/eliminar">  <!-- nos lleva a la url eliminar-->
     <c:param name="clienteId" value="${PedidosTemp.id}"/>   <!--  el par?metro que le pasamos a la url -->
    </c:url>
    
  <tr>
      <td>${PedidosTemp.numpedido}</td>
      <td>${PedidosTemp.fecha}</td>
      <td>${PedidosTemp.importe}</td>
      <td>${PedidosTemp.descuento}</td>
      <td><a href="${linkActualizar}"><input type="button" value="Modificar"/></a></td>
      <td><a href="${linkEliminar}"><input type="button" value="Eliminar"  
             onclick="if(!(confirm('vas a eliminar un registro. Est?s seguro?')))  return false;"/></a></td>
  </tr>
</c:forEach>
</table>

<br>
<center>
<input type="button" value="Agregar Pedido" onclick="window.location.href='muestraFormularioAgregarPedidos'; return false;"/>
</center>
</body>
</html>