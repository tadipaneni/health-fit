<%@ page import ="java.sql.*"%>
<%
String username=request.getParameter("username");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    



    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3","root","Root");
        Statement st=conn.createStatement();
        st.executeUpdate(" insert into registerpage values('"+username+"','"+email+"','"+password     +"')");
        
    }
    catch(Exception e){
       System.out.println(e);
    }
    response.sendRedirect("login.html");
%>