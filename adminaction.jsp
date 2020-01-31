<%
String usr = request.getParameter("user");
String pas = request.getParameter("pass");

    if(usr.equalsIgnoreCase("admin") &&(pas.equalsIgnoreCase("admin")))
               {
    
    response.sendRedirect("adminpage.jsp?msg=sucess");
    }
    else{
response.sendRedirect("adminlog.jsp?msgg=fails");
}

%>