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
    <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Your Vote is Submitted Successfully');</script>
        <%}
            if (request.getParameter("msg11") != null) {%>
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
          <li><a href="userhome.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="viewpoll.jsp"><span>View Poll</span></a></li>
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
          HttpSession ses=request.getSession(true);
            String uid=ses.getAttribute("roolno").toString();
            Connection con;
            Statement st;
            ResultSet rs;
            con = Dbconnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select * from poll");
                                                      
            %>
     
         <table style="width:70%" border="2" >

               <h2 style="color: white">Uploaded File Details</h2><br><hr>

<tr>
      <th><font color="green">Id</th>
     <th><font color="green">______Question______</th>
     <th><font color="green"> Option_A</th>
     <th><font color="green"> Option_B</th>
     <th><font color="green"> Option_C</th>  
     <th><font color="green"> Option_D</th>  
     <th><font color="red"> Vote</th>
     
</tr>
    <%
while(rs.next()){
%>
<tr>
    <th style="color: blue"><%=rs.getString(1)%></th>
    <th style="color: blue"><%=rs.getString(2)%></th>
    <th style="color: blue"><%=rs.getString(3)%></th>
    <th style="color: blue"><%=rs.getString(4)%></th>
    <th style="color: blue"><%=rs.getString(5)%></th>
    <th style="color: blue"><%=rs.getString(6)%></th>
     <td><a href="viewpoll1.jsp?id=<%=rs.getInt("id")%>&que=<%=rs.getString("que")%>&a=<%=rs.getString("a")%>&b=<%=rs.getString("b")%>&c=<%=rs.getString("c")%>&d=<%=rs.getString("d")%>">Vote</a> </td>          
    
 </tr> 
       <%}%>                 
            
             </table>
                    </center>
     
               
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
