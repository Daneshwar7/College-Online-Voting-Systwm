 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    String password = request.getParameter("password");
    System.out.println(password);
    try{
       
      
	Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where roolno='"+username+"' and password='"+password+"'");
       if(rs.next())
        {
         String  roolno = rs.getString(1);
		   session.setAttribute("roolno",roolno);
		   System.out.println("roolno"+roolno);
		   response.sendRedirect("userhome.jsp?msg=login success");
        }
       else 
        {
            response.sendRedirect("user.jsp?msg1=username/password wrong");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in userlogact"+e.getMessage());
    }
%>



