<%@page import="pack.mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
<%
    String key = request.getParameter("r");
    System.out.println(key);
    String user = request.getParameter("k");
       System.out.println(user);
    String filename = request.getParameter("t");
       System.out.println(filename);
    String mail = null;
    Connection con = DbConnector.getConnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    ResultSet rs = st1.executeQuery("select * from regpage where userid='" + user + "'");
    if (rs.next()) {
        mail = rs.getString("mail");
        System.out.println(" friend name" + mail);
        mail m = new mail();
        m.mailsend(key, mail, filename);
        response.sendRedirect("adminpage.jsp?mail=public key send sucess..!");
    } else {
        System.out.println("Error found to sending mail..!");
        response.sendRedirect("adminpage.jsp?mailf=public key send fails..!");
    }



%>