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
    
        <%
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/motos", "root","");
            Statement s = conexion.createStatement();
            ResultSet productoEncontrado = s.executeQuery("SELECT * FROM producto WHERE ID_PROD = " + request.getParameter("ID"));
            productoEncontrado.next();
        %>
        <form method="get" action="modificarProducto.jsp">
        <h2>Modifique los datos del producto seleccionado:</h2>
        <p>
            <label>Nombre del Producto:</label>
            <br>
            <%
                out.println("<input class=\"nuevoProducto\" type=\"text\" name=\"Nombre\" maxlength=\"40\" value=\"" + productoEncontrado.getString("NomPro") + "\">");
            %>
        </p>
        
        <p>
            <label>Color del Producto:</label>
            <br>
            <%
                out.println("<input class=\"nuevoProducto\" type=\"text\" name=\"Color\" maxlength=\"40\" value=\"" + productoEncontrado.getString("ColPro") + "\">");
            %>
        </p>
        
        <p>
            <label>Cilindrada (Solo numeros, Ej: 125):</label>
            <br>
            <%
                out.println("<input class=\"nuevoProducto\" type=\"number\" name=\"Cilindrada\" maxlength=\"40\" value=\"" + productoEncontrado.getString("CilPro") + "\">");
            %>
        </p>
        
        <p>
            <label>Marca:</label>
            <br>
            <select class="nuevoProducto" name="Marca">
                    <option value="0" disabled>--Elige Marca</option>
                    <option value="1"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 1) {
                                    out.println("selected");
                                }
                            %>
                            >GAS GAS</option>
                    <option value="2"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 2) {
                                    out.println("selected");
                                }
                            %>
                            >HONDA</option>
                    <option value="3"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 3) {
                                    out.println("selected");
                                }
                            %>
                            >YAMAHA</option>
                    <option value="4"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 4) {
                                    out.println("selected");
                                }
                            %>
                            >SUZUKI</option>
                    <option value="5"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 5) {
                                    out.println("selected");
                                }
                            %>
                            >KTM</option>
                    <option value="6"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 6) {
                                    out.println("selected");
                                }
                            %>
                            >HUSQVARNA</option>
                    <option value="7"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 7) {
                                    out.println("selected");
                                }
                            %>
                            >KAWASAKI</option>
                    <option value="8"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 8) {
                                    out.println("selected");
                                }
                            %>
                            >BMW</option>
                    <option value="9"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 9) {
                                    out.println("selected");
                                }
                            %>
                            >DUCATI</option>
                    <option value="10"
                            <% 
                                if (productoEncontrado.getInt("ID_MAR") == 10) {
                                    out.println("selected");
                                }
                            %>
                            >SHERCO</option>
            </select>
        </p>
        
        <p>
            <label>Modalidad:</label>
            <br>
            <select class="nuevoProducto" name="Modalidad">
                    <option value="0">--Elige Modalidad</option>
                    <option value="1"
                            <% 
                                if (productoEncontrado.getInt("ID_MOD") == 1) {
                                    out.println("selected");
                                }
                            %>
                            >SCOOTER</option>
                    <option value="2"
                            <% 
                                if (productoEncontrado.getInt("ID_MOD") == 2) {
                                    out.println("selected");
                                }
                            %>
                            >NAKED</option>
                    <option value="3"
                            <% 
                                if (productoEncontrado.getInt("ID_MOD") == 3) {
                                    out.println("selected");
                                }
                            %>
                            >SPORT</option>
                    <option value="4"
                            <% 
                                if (productoEncontrado.getInt("ID_MOD") == 4) {
                                    out.println("selected");
                                }
                            %>
                            >SUPER SPORT</option>
                    <option value="5"
                            <% 
                                if (productoEncontrado.getInt("ID_MOD") == 5) {
                                    out.println("selected");
                                }
                            %>
                            >TRIAL</option>
                    <option value="6"
                            <% 
                                if (productoEncontrado.getInt("ID_MOD") == 6) {
                                    out.println("selected");
                                }
                            %>
                            >MOTOCROSS</option>
            </select>
        </p>
        
        <p>
            <label>URL de la imagen del producto:</label>
            <br>
            <%
                out.println("<input class=\"nuevoProducto\" type=\"text\" name=\"URL\" maxlength=\"40\" value=\"" + productoEncontrado.getString("IMG_PRO") + "\">");
            %>
        </p>
        <p>
            <% 
                out.println("<input type=\"hidden\" name=\"ID\" value=\"" + request.getParameter("ID") + "\">");
            %>
            <input type="submit" value="Modificar">
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
