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
          <li><a href="adminhome.jsp"><span>Home Page</span></a></li>
          <li><a href="addpoll.jsp"><span>Add Poll</span></a></li>
         
           <li class="active"><a href="viewresults2.jsp"><span>View Results</span></a></li>
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
         
             
            Connection con;
            Statement st;
            ResultSet rs;
           
           
            con = Dbconnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select * from poll");
          
          
            
       %>
     
         <table style="width:70%" border="2" >
             <form action="viewresults3.jsp" method="post">
               <h2 style="color: white">User Poll Details</h2><br><hr>

  <tr>
                          <th height="43"><font color="white">Select Question Id</th>
                          <td><select id="s1" name="qid" style="width:170px;" class="text" required="">
                            <% 
                       while(rs.next())
                       {
                           
                          
                       int qid = rs.getInt("id");
                       
                             %>
               
          
                    <option value="<%=qid%>" ><%=qid%></option>
             <% }%>
                   
             
                              </select>
             
            
             </table>
            
             
              <tr>
              <td><br/>
                 <input type="submit" value="Submit"  style="height:30px; width:65px" />
              </td>
             </tr>
                     </form></center>
    
    
     
          
          
          
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
