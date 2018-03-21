<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Class.forName("com.mysql.jdbc.Driver");

    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/motos", "root","");
    
    Statement s = conexion.createStatement();

    String consulta = "INSERT INTO producto (ID_MAR, ID_MOD, NomPro, ColPro, CilPro, IMG_PRO) VALUES ("
        + request.getParameter("Marca") + ", "
        + request.getParameter("Modalidad") + ", "
        + "'" + request.getParameter("Nombre") + "'" + ", " 
        + "'" + request.getParameter("Color") + "'" + ", "
        + request.getParameter("Cilindrada") + ", "
        + "'" + request.getParameter("URL") + "'" + ")";
    
    s.execute(consulta);  
//    out.println(consulta);
    out.println("<script>document.location = \"Productos.jsp\"</script>");
%>
