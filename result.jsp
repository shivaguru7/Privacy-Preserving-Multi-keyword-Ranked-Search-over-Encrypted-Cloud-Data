<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Privacy-Preserving Multi-Keyword Ranked
Search over Encrypted Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script>
    function check(){
        var a = document.f.k.value;      
         if(a==0){
            alert('Please Enter The Key..!');
            return false;
            document.getElementById("k").focus();            
        }
    }
    
    
</script>
</head>
<body>
<div class="main">
  <div class="search">
   
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
  <div class="header">
    <div class="logo">
      <h1><a href="index.html"><span>Privacy-Preserving Multi-Keyword Ranked
Search over Encrypted Cloud Data</span></a></h1>
    </div>
  
    <div class="clr"></div>
  </div>
  <div class="hbg"><img src="images/header_images.jpg" width="970" height="294" alt="" /></div>
  <div class="content">
    <div class="mainbar">
      <div class="article">
        <h2><span>Requesting Key for Data Service..!</span></h2>
        <div class="clr"></div>
       <%
           
           String my = session.getAttribute("me").toString();
       if(request.getParameter("msg")!=null){
       out.println("<script>alert('Welcome..!')</script>");
       }
       
       %>
       <img src="images/cloudsearch.jpg" width="613" height="193" alt="" />
     
                 
           Welcome: <font color="red"><%=my%></font><br></br>
                                  
<table border="2"style="width: 500px;" >
    <form action="userdwnld" method="get">
                                <%
                                    
                                    String r = request.getParameter("key").trim();
                                    System.out.println("this is key" + r);
                                    Blob blob = null; String f = null;
                                    Connection conn = DbConnector.getConnection();
                                    Statement st = conn.createStatement();
                                    ResultSet rs = st.executeQuery("select * from files where key_='"+r+"'");//  where id = '" + request.getQueryString() + "' ");
                                    while (rs.next()) {
                                        blob = rs.getBlob("file");
                                       f = rs.getString("name");
                                    }
                                    byte a[] = blob.getBytes(1, (int) blob.length());
                                    String str = new String(a, "UTF-8");
                                  //  String enc = new TrippleDes().encrypt(str);
                                    %>
                                    <textarea style="height: 500px;width: 600px;"> <%=str%></textarea>
                            <input type="text" value="<%=f%>" name="file" style="height: 30PX; background-color:#ccffff; font-family: monospace; font-size: 20px" id="name" readonly/>
                                 <input type="submit" value="Download" />&nbsp;&nbsp;&nbsp;
    </form>
                            </table>
         
      </div>
    
     
    </div>
    <div class="sidebar">
      <div class="gadget">
        <h2><span>Sidebar</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
            <li class="active"><a href="userpage.jsp">Home</a></li>
            <li><a href="index.jsp">Logout</a></li>
           
        
        </ul>
      </div>
  
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
  <div class="fbg">
 

     
   
  
    <div class="clr"></div>
  </div>
  <div class="footer">
    <p class="lf">&copy; Copyright <a href="">SHiVA 2017</a>.</p>
  
    <div class="clr"></div>
  </div>
</div>
</body>
</html>