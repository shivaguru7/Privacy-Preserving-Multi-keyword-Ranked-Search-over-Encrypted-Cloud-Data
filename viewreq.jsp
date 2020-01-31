<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        var a = document.ff.user.value;
        var b = document.ff.pass.value;
       
   
         if(a==0){
            alert('Please Enter UserId');
            return false;
            document.getElementById("name").focus();            
        } if(b==0){
            alert('Please Enter Password');
            return false;
            document.getElementById("pass").focus();            
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
        <h2><span>User Request  Details..!</span></h2>
        <div class="clr"></div>
       
        <img src="images/IC3489.jpg" width="513" height="193" alt="" />
                   <table border="2" style="width: 550px; alignment-adjust: central; ">
                
                <tr style="color: red; background-color: #ccffff; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   <td><font size="3">REQUEST ID</font></td>
                  
                   <td align="center"><font size="3">PUBLIC KEY</font></td>
                   <td align="center"><font size="3">USERNAME</font></td>
                   <td align="center"><font size="3">FILENAME</font></td>
                   <td align="center"><font size="3">ACTION</font></td>
<!--                   <td align="center"><font size="3">DOWNLOAD</font></td>-->
                   <td align="center"><font size="3">CANCEL</font></td>
                    
                   
               </tr>
<%                              
        String  fname=null,r=null,k=null,t=null,key=null,cat=null;
        
Class.forName("com.mysql.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  request ");
while(rs1.next()){
fname=rs1.getString("id");
r=rs1.getString("name");
k=rs1.getString("user");
t=rs1.getString("filename");


       %>   
       <tr style="color: #0000cc; background-color: #ffccff">
           <form action="send.jsp" method="get" >
                <td align="center"><%=fname%></td>
              <!--<td><input type="text" name="file" value="<%=fname%>" style="height: 40px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>-->
              <td><input type="text" name="r" value="<%=r%>" style="height: 40px; width: 30px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>
              <td><input type="text" name="k" value="<%=k%>" style="height: 40px; width: 80px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>
              <td><input type="text" name="t" value="<%=t%>" style="height: 40px; width: 100px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>
             
<!--              <td align="center"><%=r%></td>
       <td align="center"> <%=k%></td>
       <td align="center"> <%=t%></td>
       -->
      
       <td align="center"><input type="submit" value="SEND" class="button"></td>
       </form>
<td align="center"><a href="delete.jsp?<%=fname%>" ><input type="submit" value="DELETE" class="button"></a></td>
     <%

}                                     
%>
</tr>
</table>
      </div>
    
     
    </div>
    <div class="sidebar">
      <div class="gadget">
        <h2><span>Sidebar</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
            <li class="active"><a href="adminpage.jsp">Home</a></li>
            <li><a href="view.jsp">View Data Details</a></li>
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