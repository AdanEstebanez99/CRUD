<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Class.forName("com.mysql.jdbc.Driver");

    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/motos", "root","");
    
    Statement s = conexion.createStatement();

    String consulta = "UPDATE producto SET "
            + "NomPro = '" + request.getParameter("Nombre") + "', "
            + "ColPro = '" + request.getParameter("Color") + "', "
            + "CilPro = " + request.getParameter("Cilindrada") + ", "
            + "ID_MAR = " + request.getParameter("Marca") + ", "
            + "ID_MOD = " + request.getParameter("Modalidad") + ", "
            + "IMG_PRO = '" + request.getParameter("URL") + "'" 
            
            + " WHERE ID_PROD = " + request.getParameter("ID") + "";
    s.execute(consulta);  
//    out.println(consulta);
    out.println("<script>document.location = \"Productos.jsp\"</script>");
%>
