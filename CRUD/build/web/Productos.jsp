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
      <div id="panel"></div>
        <h3>Panel de Administración</h3>
        <p>Marca</p>
        <p>Modalidad</p>
      
            
            
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
                            "<class='\"desc\">Prueba</div> </div>");
                }
            conexion.close();
          %>      
          
          
      </div>
    </div>

    <div id="footer">
    Página creada por: Adán Estebanez Villarrubia</br>
    Aplicación Crud Programacion 2018</br>
    </div>
  </div>

</body>
</html>