<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String name = request.getParameter("name");
            String usr = request.getParameter("user");
            String pass = request.getParameter("pass");
            String mail = request.getParameter("email");
            String d = request.getParameter("dob");
            String l = request.getParameter("loc");
            String s = request.getParameter("sex");
           Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into regpage values('"+name+"','"+usr+"','"+pass+"','"+mail+"','"+d+"','"+l+"','"+s+"',now())");
            if (i != 0) {

               response.sendRedirect("userlog.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("regpage.jsp?msgr=Register fails");
            }
            %>