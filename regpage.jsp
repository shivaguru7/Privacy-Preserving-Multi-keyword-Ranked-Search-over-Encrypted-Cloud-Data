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
        var d = document.ff.email.value;
        var e = document.ff.dob.value;
        var f = document.ff.loc.value;
        var g = document.ff.sex.value;
        
   
         if(a==0){
            alert('Please Enter Name');
           document.getElementById("name").focus();          
           return false;
       } if(b==0){
            alert('Please Enter Userid');
           document.getElementById("user").focus();            
            return false;
      
        } if(c==0){
            alert('Please Enter Password');
            document.getElementById("pass").focus();            
            return false;
            
        } if(d==0){
            alert('Please Enter E-mail Id');
            document.getElementById("email").focus();            
            return false;
            
        } if(e==0){
            alert('Please Enter Date of Birth');
            document.getElementById("dob").focus();            
            return false;
            
        } if(f==0){
            alert('Please Enter Your Location');
            document.getElementById("loc").focus();            
            return false;
            
        } if(g==0){
            alert('Please Enter Gender');
            document.getElementById("sex").focus();            
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
       
        <img src="images/log.jpg" width="613" height="193" alt="" />
      <form action="regaction.jsp" name="ff"  method="get" onsubmit="return check()">
                    Name: <br><input type="text" name="name" id="name" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    UserId: <br><input type="text" name="user" id="user" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Password: <br><input type="password" name="pass" id="pass" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Email Id:<br> <input type="email" name="email" id="mail" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Date of Birth:<br> <input type="date" name="dob" id="dob" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Location:<br> <input type="text" name="loc" id="loc" style="background: #00ccff; height: 28px;  width:250px;"><br><br>
                    Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name ="sex" id="sex" style="background: #00ccff; height: 28px;  width:180px;"><option>Male</option>
                        <option>Female</option>
                    </select><br></br>
                    <div style="margin-left: 3px;">  
                        <input type="submit" value="Register!!" style="background-color: green; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
                    </form>
                    <input type="reset" value="Clear" style="background-color: red; height: 30px; width: 80px; border: 4px; font-weight: bold;"></div>
             
        		
        
      </div>
    
     
    </div>
    <div class="sidebar">
      <div class="gadget">
        <h2><span>Sidebar</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
            <li class="active"><a href="index.jsp">Home</a></li>
            <li><a href="adminlog.jsp">Data Owner</a></li>
            <li><a href="userlog.jsp">User Login</a></li>
        
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