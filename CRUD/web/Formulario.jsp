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
        <form method="get" action="insertaProducto.jsp">
        <h2>Registro de producto nuevo:</h2>
        <p>
            <label>Nombre del Producto:</label>
            <br>
            <input class="nuevoProducto" type="text" name="Nombre" maxlength="40">
        </p>
        
        <p>
            <label>Color del Producto:</label>
            <br>
            <input class="nuevoProducto" type="text" name="Color" maxlength="15"
        </p>
        
        <p>
            <label>Cilindrada (Solo numeros, Ej: 125):</label>
            <br>
            <input class="nuevoProducto" type="number" name="Cilindrada" maxlength="4">
        </p>
        
        <p>
            <label>Marca:</label>
            <br>
            <select class="nuevoProducto" name="Marca">
                <option value="0" selected disabled>--Elige Marca</option>
                    <option value="1">GAS GAS</option>
                    <option value="2">HONDA</option>
                    <option value="3">YAMAHA</option>
                    <option value="4">SUZUKI</option>
                    <option value="5">KTM</option>
                    <option value="6">HUSQVARNA</option>
                    <option value="7">KAWASAKI</option>
                    <option value="8">BMW</option>
                    <option value="9">DUCATI</option>
                    <option value="10">SHERCO</option>
            </select>
        </p>
        
        <p>
            <label>Modalidad:</label>
            <br>
            <select class="nuevoProducto" name="Modalidad">
                <option value="0" selected disabled>--Elige Modalidad</option>
                    <option value="1">SCOOTER</option>
                    <option value="2">NAKED</option>
                    <option value="3">SPORT</option>
                    <option value="4">SUPER SPORT</option>
                    <option value="5">TRIAL</option>
                    <option value="6">MOTOCROSS</option>
            </select>
        </p>
        
        <p>
            <label>URL de la imagen del producto:</label>
            <br>
            <input class="nuevoProducto" type="text" name="URL" maxlength="255">
        </p>
        <p>
            <input type="submit" value="enviar">
        </p>
        </form>
      
    </div>

    <div id="footer">
    Página creada por: Adán Estebanez Villarrubia</br>
    Aplicación Crud Programación 2018</br>
    </div>
  </div>
    
  <img id="imagenForm" src="imagenes/moto1.png">

</body>
</html>
