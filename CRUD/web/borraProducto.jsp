<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/motos", "root","");
    Statement s = conexion.createStatement();
    
    String consulta = "DELETE FROM producto WHERE NomPro = '" + request.getParameter("Nombre") + "'";
    s.execute(consulta);  
    out.println("<script>document.location = \"Productos.jsp\"</script>");
%>
