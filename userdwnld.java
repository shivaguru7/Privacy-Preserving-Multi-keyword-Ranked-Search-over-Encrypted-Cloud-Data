/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ibn
 */
public class userdwnld extends HttpServlet {

    SimpleFTPClient client;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            //String path = "C:\\Users\\JP Infotech\\Desktop\\Cloud Data\\"; //chanage the path
            String path = "C:\\Users\\admin\\Desktop\\";
            client = new SimpleFTPClient();
            client.setHost("ftp.drivehq.com");
            client.setUser("welcome02");
            client.setPassword("welcomeshiva");
            client.setRemoteFile(request.getParameter("file"));

            client.connect();
            if (client.downloadFile(path+request.getParameter("file"))) {
                //out.println("File Downloaded");
                
                
                 response.sendRedirect("userpage.jsp?dwn= sucess..!");
                //System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + user);
                //String sq2 = "insert into transaction values('" + user + "','" + file + "','Success','"+val+"',now(),'Download')";
                //pstm1 = (PreparedStatement) con.prepareStatement(sq2);
                // pstm1.executeUpdate();
            } else {
                //out.println("File not downloaded");
                 response.sendRedirect("userpage.jsp?dwnn= not sucess..!");
                // String sq3 = "insert into transaction values('" + user + "','" + file + "','Failed','"+val+"',now(),'Download')";
                //  pstm2 = (PreparedStatement) con.prepareStatement(sq3);
                // pstm2.executeUpdate();
            }


        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
