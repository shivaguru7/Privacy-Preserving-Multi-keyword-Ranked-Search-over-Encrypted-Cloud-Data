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
          
           <%
               int i = 1;
               String f = null;
               String r = null;
               
           String key = request.getQueryString();
           System.out.println(key);
           
           Connection conn = DbConnector.getConnection();
           Statement st1 = conn.createStatement();
           Statement st2 = conn.createStatement();
           Statement st3 = conn.createStatement();
           ResultSet rst = st1.executeQuery("select * from files where key_ = '"+key+"'");
           if(rst.next()){
           r = rst.getString("rank_");
           f= rst.getString("name");
           System.out.println("Present rank is"+ r);
           }
           int rr = Integer.parseInt(r);
           
           int a = i+rr;
           String finala = a+"";
           System.out.println("here added " + a);
           int up = st2.executeUpdate("update files set rank_ ='" + finala + "' where key_ = '"+key+"'");
           if(up!=0){
           System.out.println("updated sucess..!");
           }
           int req = st3.executeUpdate("insert into request(name,user,filename)values('"+key+"','"+my+"','"+f+"')");
           if(req!=0){
           System.out.println("request send..!");
           }else{
           System.out.println("request send fails..!");
           }                      
           %>
           <form name="f" action="result.jsp" method="get" onsubmit="return check()">
           <input type="text" readonly value="Selected Data File: <%=f%>" name="fname" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
           <input type="text" name="key" id="k" placeholder="Enter the Key" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
           <div style="margin-left: 3px;">  
                        <input type="submit" value="Get" style="background-color: green; width: 80px; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
           </div>
                       </form>
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