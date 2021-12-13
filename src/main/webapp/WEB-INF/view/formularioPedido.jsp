<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>
  <h1>INSERTAR CLIENTE</h1>
   <!--  insertarCliente es el método de la interfaz -->
   <form:form action="insertarPedido" modelAttribute="pedido" method="POST">   
   <!--  para usarlo en la parte de modificar el registro ya que carga el id tambien al recuperar el registro-->  
     <form:hidden path="id"/>  
     <table border="1">
      <tr>
      <td>numpedido</td><td><form:input path="numpedido" /></td>
      </tr>
      <tr>
     <td>fecha</td><td><form:input path="fecha" /></td>
     </tr>
     <tr>
     <td>importe</td><td><form:input path="importe" /></td>
     </tr>
     <td>descuento</td><td><form:input path="descuento" /></td>
     </tr>
     <tr>
     <td colspan="2"><input type="submit" value="Insertar/Actualizar"></td>
     </tr>
  </table>
		
</form:form>

</body>
</html>


