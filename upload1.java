/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;
import javax.servlet.ServletContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

/**
 *
 * @author jp
 */
public class upload1 extends HttpServlet {

    SimpleFTPClient client;
    File file;

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

            DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
            diskFileItemFactory.setRepository(file);
            diskFileItemFactory.setSizeThreshold(1 * 1024 * 1024);

            ServletFileUpload newHUpload = new ServletFileUpload(diskFileItemFactory);
            //List items = newHUpload.parseRequest(request);
            List items = newHUpload.parseRequest(new ServletRequestContext(request));
            Iterator iterator = items.iterator();
            FileItem fileItem = (FileItem) iterator.next();
            Connection con = null;
        PreparedStatement pstm = null;
        FileInputStream fis = null;
        long size = 0;

            client = new SimpleFTPClient();
            client.setHost("ftp.drivehq.com");
            client.setUser("welcome02");
            client.setPassword("welcomeshiva");
            client.setRemoteFile(fileItem.getName());

            boolean log = client.connect();
            //file, name, key_, title, keyword, cat
            Random r = new Random();
            int ii = r.nextInt(10000000-500000)+500000;
            String k = ii+"";
            String l = "1";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pri_multiKey", "root", "root");
           // List items = uploadHandler.parseRequest(request);
            Iterator itr = items.iterator();
           String sql = "insert into files (file,name,rank_,key_)values(?,?,?,?)";
         //   String sql = "insert into files (file,name,key_)values(?,?,?)";
            pstm = con.prepareStatement(sql);
          //  while (itr.hasNext()) {

                FileItem item = (FileItem) itr.next();
                            System.out.println("getD "+item.getName());
                pstm.setBinaryStream(1,item.getInputStream());
                pstm.setString(2, item.getName());
                pstm.setString(3,l );
                pstm.setString(4,k );
                 pstm.execute();
                  HttpSession session = request.getSession(true);
                session.setAttribute("nn", k);
             System.out.println("Values inserted");
           
            if (log) {
              
                if (client.uploadFile(fileItem.getInputStream())) {
                   response.sendRedirect("setkeyword.jsp?msg= sucess..!");
                } else {
                  response.sendRedirect("adminpage.jsp?msgg= NOT sucess..!");
                }
            } else {
               out.println("not connected");
            }



        } catch (SQLException ex) {
            Logger.getLogger(upload1.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(upload1.class.getName()).log(Level.SEVERE, null, ex);
        } catch (FileUploadException ex) {
            Logger.getLogger(upload1.class.getName()).log(Level.SEVERE, null, ex);
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
