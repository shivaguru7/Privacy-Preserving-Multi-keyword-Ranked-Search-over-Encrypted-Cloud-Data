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
        var a = document.ff.name.value;
        var b = document.ff.user.value;
        var c = document.ff.pass.value;
       
        
   
         if(a==0){
            alert('Please Enter Title');
           document.getElementById("name").focus();          
           return false;
       } if(b==0){
            alert('Please Enter Keyword');
           document.getElementById("user").focus();            
            return false;
      
        } if(c==0){
            alert('Please Enter Category');
            document.getElementById("pass").focus();            
            return false;            
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
        <h2><span>Data Owner Register Here..!</span></h2>
        <div class="clr"></div>
       
        <img src="images/ps-cloud.jpg" width="613" height="193" alt="" />
     
        
         <form action="update.jsp" name="ff"  method="get" onsubmit="return check()">
             
             <%
             String ke = session.getAttribute("nn").toString();
             System.out.println("this is key " + ke);
             %>
             <input type="hidden" name="key" value="<%=ke%>">
                    Title: <br><input type="text" name="tit" id="name" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Keyword: <br><input type="text" name="keyword" id="user" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Category: <br><input type="text" name="cat" id="pass" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                  <div style="margin-left: 3px;">  
                      <input type="submit" value="Save !!" style="background-color: green; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
                    </form>
        
      </div>
    
     
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