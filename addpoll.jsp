<!DOCTYPE html>
<html>
<head>
<title>CleanMarketing</title>
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
        <script>alert('Question Added Successfully');</script>
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
          <li><a href="adminhome.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="addpoll.jsp"><span>Add Poll</span></a></li>
          
           <li><a href="viewresults2.jsp"><span>View Results</span></a></li>
         <li><a href="index.html"><span>Logout</span></a></li>
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
               <h2><font color="white">Admin Add Poll</font></h2>
    <br><br>
           <form name="f" action="addpoll1.jsp" method="post" >  <center>
<table>

    
        <tr>
              <td>
                  <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question:</font></strong>
              <textarea id="address" name="que" rows="3" cols="21" required=""></textarea> </td>
</tr>

        <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option A: </font></strong>
                <input type="text" name="a" id="password1" placeholder= Password style="height:30px; width:170px"></input>
              </td>
        </tr>
   
        <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option B: </font></strong>
                <input type="text" name="b" id="password1" placeholder= Password style="height:30px; width:170px"></input>
              </td>
        </tr>
    
       <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option C: </font></strong>
                <input type="text" name="c" id="password1" placeholder= Password style="height:30px; width:170px"></input>
              </td>
        </tr>
    
       <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option D: </font></strong>
                <input type="text" name="d" id="password1" placeholder= Password style="height:30px; width:170px"></input>
              </td>
        </tr>
    
      
    
	  <tr>
              <td>
                 <input type="submit" value="ADD"  style="height:30px; width:65px" />
              </td>
         </tr>
 
	</table>
                    </center>
     </form>
            
            </div>
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
