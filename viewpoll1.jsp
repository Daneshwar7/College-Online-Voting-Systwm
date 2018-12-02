<%@page import="java.sql.ResultSet"%>
<%@page import="robust.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><font color="white">Annual<span> Chitkara</span>Polls</font></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="userhome.jsp"><span>Home Page</span></a></li>
          <li><a href="viewpoll.jsp"><span>View Poll</span></a></li>
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
	 
           <%

    int id=Integer.parseInt(request.getParameter("id"));
    String que = request.getParameter("que");
    String a = request.getParameter("a");     
    String b = request.getParameter("b");
    String c = request.getParameter("c");
    String d = request.getParameter("d");
                          

                        %>
                       <form name="f" action="viewpoll2.jsp" method="post" >  <center>
<table>

    
    
    
           <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question Id: </font></strong>
                <input type="text" name="id" value="<%=id%>" style="height:30px; width:170px" readonly></input>
              </td>
        </tr>   
              
    
        <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Question: </font></strong>
               <input type="text" name="que" value="<%=que%>" style="height:60px; width:240px" readonly></input>
              </td>
        </tr>

        <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option A: </font></strong>
                <input type="text" name="a" value="<%=a%>" style="height:30px; width:170px" readonly></input>
              </td>
        </tr>
   
        <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option B: </font></strong>
                <input type="text" name="b"  value="<%=b%>" style="height:30px; width:170px" readonly></input>
              </td>
        </tr>
    
       <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option C: </font></strong>
                <input type="text" name="c"  value="<%=c%>" style="height:30px; width:170px" readonly></input>
              </td>
        </tr>
    
       <tr>
              <td>
               <strong><font size="4" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option D: </font></strong>
                <input type="text" name="d" value="<%=d%>" style="height:30px; width:170px" readonly></input>
              </td>
        </tr>
    
        <tr>
              <td>
               <strong><font size="4" color="white">Select Answer: </font></strong>
              
               <select id="s1" name="ans"style="height:30px; width:170px" class="text" required="">
                            <option>--Select--</option>
                            <option>A</option>
                            <option>B</option>
                             <option>C</option>
                            <option>D</option>
                          </select>
             </td>
        </tr>
              
	  <tr>
              <td>
                 <input type="submit" value="SUBMIT"  style="height:30px; width:65px" />
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
