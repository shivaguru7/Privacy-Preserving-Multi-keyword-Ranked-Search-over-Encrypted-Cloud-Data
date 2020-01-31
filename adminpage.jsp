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
        <h2><span>File Upload Here..!</span></h2>
        <div class="clr"></div>
       
        <img src="images/ps-cloud.jpg" width="613" height="193" alt="" />
        <form action="upload1" method="post" enctype="multipart/form-data">
                    <input type="file" name="file" style="height: 30PX; background-color:#ccffff;"/>
                        <input type="submit" class="button"/>
        </form>
        
      </div>
        <%
        if(request.getParameter("mail")!=null){
        out.println("<script>alert('Public key send sucess..!')</script>");
        }
         if(request.getParameter("que")!=null){
        out.println("<script>alert('Query Updated sucess..!')</script>");
        }
        %>
    
     
    </div>
    <div class="sidebar">
      <div class="gadget">
        <h2><span>Sidebar</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
            <li class="active"><a href="adminpage.jsp">Home</a></li>
            <li><a href="view.jsp">View Data Details</a></li>           
            <li><a href="viewreq.jsp">View Request</a></li>
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