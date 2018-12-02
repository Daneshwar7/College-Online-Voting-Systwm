<!DOCTYPE html>
<html>
<head>
<title>Online Voting</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
    <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('login success');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('username/password wrong');</script> 
        
        <%}
        %> 
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><font color="white">Annual<span> Chitkara</span>Polls</font></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="admin.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="user.jsp"><span>User</span></a></li>
        
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><img src="images/1.jpg" width="960" height="360" alt="" /><span><br />
       <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="clr"></div>
          <div class="post_content">
           <center>
               <h2><font color="white">User Login</font></h2>
    <br><br>
           <form name="f" action="useract.jsp" method="post" >  <center>
<table>
   
        <tr>
              <td>
                  <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;Rool No:</font></strong>
                <input type="text" name="username" id="userName1" placeholder= Rool_No style="height:30px; width:170px"></input>
              </td>
</tr>
<br>
        <tr>
              <td>
               <strong><font size="4" color="white">Password: </font></strong>
                <input type="password" name="password" id="password1" placeholder= Password style="height:30px; width:170px"></input>
              </td>
        </tr>
   
          <tr></tr>
	  <tr></tr>
	  <tr></tr>
          <br>
	  <tr>
              <td><br/>
                 <input type="submit" value="Login"  style="height:30px; width:65px" />
              </td>
                        </tr>
 
	</table>
                    </center>
     </form></div>
          <div class="clr"></div>
        </div>
     </div>
      
      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
