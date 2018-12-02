 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
   
    String id = null;
    String que = request.getParameter("que");
    String a = request.getParameter("a");     
    String b = request.getParameter("b");
    String c = request.getParameter("c");
    String d = request.getParameter("d");
   
    
    
         String status = null;
         String skey = null;
              
        
       try{
       
	Class.forName("com.mysql.cj.jdbc.Driver");
            Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevoting?user=root&password=dany007&useSSL=false");


    PreparedStatement ps = co.prepareStatement("insert into poll values(?,?,?,?,?,?)");

       ps.setString(1,id);
       ps.setString(2,que);    
       ps.setString(3,a);
       ps.setString(4,b);
       ps.setString(5,c);
       ps.setString(6,d);     
      
       ps.executeUpdate();



response.sendRedirect("addpoll.jsp?msg=success");

}
catch(Exception e1)
{
    response.sendRedirect("addpoll.jsp?msg1=failed");
out.println(e1.getMessage());
}


%>
