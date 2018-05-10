<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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

   <script>          
       function eliminar (mensaje) {          
           alert(mensaje);
       }     
    </script>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Formulario.jsp">A�adir Producto</a>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="formularioEliminar.jsp">Borrar Producto</a>
                
        </a>
        </p>
        </form>
      </div>
            
      <div id="container">
          <% Class.forName("com.mysql.jdbc.Driver");
              Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/motos", "root","");
              Statement s = conexion.createStatement();
              ResultSet listado = s.executeQuery("SELECT * FROM producto");
              
              HashMap<String ,String> infoMoto;
              
              ArrayList< HashMap <String ,String>> moto = new ArrayList< HashMap <String ,String>>();
                
                
               while (listado.next()) {
                   
                   infoMoto = new HashMap<String ,String>();
                   infoMoto.put("ID_PROD", listado.getString("ID_PROD"));
                   infoMoto.put("NomPro", listado.getString("NomPro"));
                   infoMoto.put("IMG_PRO", listado.getString("IMG_PRO"));
                   
                   moto.add(infoMoto);

                }
              
                for (HashMap <String ,String> contador: moto){
                    out.println();
                    out.println("<div class=\"gallery\">"+
                    "<a href = \"formularioModificacion.jsp?ID=" + contador.get("ID_PROD") + "\">" +
                    "<img src =" + contador.get("IMG_PRO") + ">"+
                    "</a> <div>"+
                    "<class='\"desc\">" + contador.get("NomPro") + "</div> </div>");
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