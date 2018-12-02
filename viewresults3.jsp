<%@page import="java.sql.PreparedStatement"%>
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
             
             
         int qid=Integer.parseInt(request.getParameter("qid"));
             double totalrecords=0;
            double[] count= new double[4];
            double increment=0;
             String[] var= new String[4];
             var[0]="A";var[1]="B";var[2]="C";var[3]="D";
            Connection con;
            Statement st;
            ResultSet rs;
            Statement st1;
            ResultSet rs1;
            con = Dbconnection.getConnection();
          
           PreparedStatement ps1= con.prepareStatement("delete from graph");
             ps1.executeUpdate();
            st = con.createStatement();
            rs = st.executeQuery("select * from userpoll where qid="+qid+"");
            st1 = con.createStatement();
   
         for( int i=0;i<4;i++) 
         {
             rs1 = st1.executeQuery("select * from userpoll where ans='"+var[i]+"' and qid="+qid+""); 
             while(rs1.next())
             {
                 increment++;
             }
             count[i] = increment;
             increment=0;
             System.out.println("xxi   yyycount[i]" +i +count[i]);         
         }
         
         
          
            
       %>
     
                  <% 
                       while(rs.next())
                       {
                           
                           totalrecords++;
                    
                             %>
             <% }%>
                   
             
     <%
          String opa=null;
          String opb=null;
          String opc=null;
          String opd=null;
                  
            Statement st5;
            ResultSet rs5;
       st5 = con.createStatement();
       rs5 = st5.executeQuery("select * from poll where id="+qid+"");                
      if(rs5.next()){
       opa=rs5.getString("a");  
       opb=rs5.getString("b");
       opc=rs5.getString("c");
       opd=rs5.getString("d");
     }                 
                       
double Apercentage =0;

double j=count[0];
double k=count[1];
double l=count[2];
double m=count[3];
Apercentage = j/totalrecords*100;


double Bpercentage =0; 
Bpercentage = k/totalrecords*100;
double Cpercentage =0; 
Cpercentage = l/totalrecords*100;
double Dpercentage =0;
Dpercentage = m/totalrecords*100;

 System.out.println("percentagesA -----------"+Apercentage);
 System.out.println("percentagesB -----------"+Bpercentage);
 System.out.println("percentagesC-----------"+Cpercentage);
 System.out.println("percentagesD -----------"+Dpercentage);
 String x="A";
 String y="B";
 String z="C";
 String p="D";
  PreparedStatement ps = con.prepareStatement("insert into graph values(?,?,?)");

       ps.setInt(1,qid);
       ps.setString(2,opa);    
       ps.setDouble(3,Apercentage);
       ps.executeUpdate();
 PreparedStatement pst = con.prepareStatement("insert into graph values(?,?,?)");

       pst.setInt(1,qid);
       pst.setString(2,opb);    
       pst.setDouble(3,Bpercentage);
       pst.executeUpdate();
        PreparedStatement pstt = con.prepareStatement("insert into graph values(?,?,?)");

       pstt.setInt(1,qid);
       pstt.setString(2,opc);    
       pstt.setDouble(3,Cpercentage);
       pstt.executeUpdate();
        PreparedStatement psttt = con.prepareStatement("insert into graph values(?,?,?)");

       psttt.setInt(1,qid);
       psttt.setString(2,opd);    
       psttt.setDouble(3,Dpercentage);
       psttt.executeUpdate();
 
 
       %>      
    
     
          <script type="text/javascript" src="graph/jscharts.js"></script>
<br><br><br>
            <h2><font color="white">Poll Results</font></h2><br><br><br>
<div id="graph">Loading graph...</div>

<script type="text/javascript">
   
   
var myData=new Array();
var colors=[];

<%
     
            Statement st3;
            ResultSet rs3;
      int i=0;
      Connection conn=null;
      conn = Dbconnection.getConnection();
       st3 = conn.createStatement();
      
                              
                                
                                     
                                   rs3 = st3.executeQuery("select * from graph where qid="+qid+"");   
                                      while(rs3.next())
                                {
                                        %>myData["<%=i%>"]=["<%=rs3.getString("a") %>",<%=rs3.getDouble("b")%>];<% 
                                    i++;
                                }
	%>
			
	
	var myChart = new JSChart('graph', 'pie');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setSize(500,350);
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
        
        
        </script>     
              
          
          
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
