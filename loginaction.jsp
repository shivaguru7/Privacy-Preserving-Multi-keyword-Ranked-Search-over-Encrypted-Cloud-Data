
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
String usr = request.getParameter("user");
String pas = request.getParameter("pass");

Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(" select * from regpage where userid='"+usr+"'");
if(rs.next()){
    if(rs.getString("userid").equals(usr)&&(rs.getString("pass").equals(pas)))
               {
    session.setAttribute("me", usr);
    response.sendRedirect("userpage.jsp?msg=sucess");
    }
    else{
response.sendRedirect("userlog.jsp?msgg=fails");
}
       }
else{
response.sendRedirect("userlog.jsp?msgg=fails");
}

%>