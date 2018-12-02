 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
    HttpSession ses=request.getSession(true);
    String uid=ses.getAttribute("roolno").toString();
    int id = 0;
    String que = request.getParameter("que");
    String a = request.getParameter("a");     
    String b = request.getParameter("b");
    String c = request.getParameter("c");
    String d = request.getParameter("d");
    String ans = request.getParameter("ans");
    int id1=Integer.parseInt(request.getParameter("id"));
              
        
       try{
       
	Class.forName("com.mysql.cj.jdbc.Driver");
            Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevoting?user=root&password=dany007&useSSL=false");


    PreparedStatement ps = co.prepareStatement("insert into userpoll values(?,?,?,?,?,?,?,?,?)");

       ps.setInt(1, id);
       ps.setString(2,que);    
       ps.setString(3,a);
       ps.setString(4,b);
       ps.setString(5,c);
       ps.setString(6,d);     
       ps.setString(7,ans);
        ps.setString(8,uid);
       ps.setInt(9,id1);
       ps.executeUpdate();



response.sendRedirect("viewpoll.jsp?msg=success");

}
catch(Exception e1)
{
    response.sendRedirect("viewpoll.jsp?msg1=failed");
out.println(e1.getMessage());
}


%>
