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
                      <div id="Subtitulo">Tu tienda de motos en M�laga</div>
                      </div>
    </div>
    
    <div id="nav">
    	<a href="index.html">INICIO</a> - <a href="Productos.jsp">PRODUCTOS</a>
    </div>
    
    <div id="main">
      <div id="panel">
        <h3>Panel de Administraci�n</h3>
        <form method="post" action="">
        <p><label>Marca:</label>
        <select>
            	<option value="0">--Elige Marca</option>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A�adir Objeto
        </p>
        
        <p><label>Modalidad:</label>
        <select>
            	<option value="0">--Elige Modalidad</option>
            	<option value="1">SCOOTER</option>
            	<option value="2">NAKED</option>
            	<option value="3">SPORT</option>
                <option value="4">SUPER SPORT</option>
            	<option value="5">TRIAL</option>
                <option value="6">MOTOCROSS</option>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eliminar Objeto
        </p>
        </form>
      </div>
      
            
            
<!--<div class="gallery">
  <a href="img_fjords.jpg">
    <img src='imagenes/pilotos/ryan-dungey-5.jpg'>
  </a>
  <div class="desc">Prueba</div>
</div>-->
            
      <div id="container">
          <% Class.forName("com.mysql.jdbc.Driver");
              Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/motos", "root","");
              Statement s = conexion.createStatement();
              ResultSet listado = s.executeQuery("SELECT * FROM producto");
              while (listado.next()) {
                  out.println();
//                          "<li>" + listado.getString("ID_MAR") + " " + listado.getString("ID_MOD") + " " + listado.getString("NomPro") + " " + listado.getString("ColPro") + " " + listado.getString("CilPro") + "</li>" 
                         out.println("<div class=\"gallery\">"+
                            "<a href = \"img_fjords.jpg\">"+
                            "<img src =" + listado.getString("IMG_PRO") + ">"+
                            "</a> <div>"+
                            "<class='\"desc\">" + listado.getString("NomPro") + "</div> </div>");
                }
            conexion.close();
          %>      
          
          
      </div>
    </div>

    <div id="footer">
    P�gina creada por: Ad�n Estebanez Villarrubia</br>
    Aplicaci�n Crud Programaci�n 2018</br>
    </div>
  </div>

</body>
</html>