<%@page import="java.sql.Statement"%> 
<%@page import="java.sql.ResultSet"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Tienda de Motos</title>

   <link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet"> 
   <link href="imagenes/favicon.png" rel="shortcut icon"/>
   <link href="estilo.css" rel="stylesheet"/>

</head>
<body>
	<div id="wrapper">
    
    <div id="header"> <div id="login">Entra  Registrate</div> 
                      <div id="titulo">Racing Bikes
                      <div id="Subtitulo">Tu tienda de motos en Málaga</div>
                      </div>
    </div>
    
    <div id="nav">
    	<a href="index.html">INICIO</a> - <a href="Productos.jsp">PRODUCTOS</a>
    </div>
    
    <div id="main">
    
        <form method="get" action="borraProducto.jsp">
        <h2>Modifique los datos del producto seleccionado:</h2>
        <p>
            <label>Nombre del Producto que desea eliminar:</label>
            <br>
            <input class="nuevoProducto" type="text" name="Nombre" maxlength="40">
        </p>
            <input type="submit" value="Borrar">
        </p>
        </form>
      
    </div>

    <div id="footer">
    Página creada por: Adán Estebanez Villarrubia</br>
    Aplicación Crud Programación 2018</br>
    </div>
  </div>
    

</body>
</html>
