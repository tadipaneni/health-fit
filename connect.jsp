<%@ page import ="java.sql.*"%> 
<% 
String username=request.getParameter("name"); 
String password=request.getParameter("password"); 
 
int c=0; 
String a=null; 
  session.setAttribute("username",username); 
session.setMaxInactiveInterval(2*60*60);  
 
 
try{ 
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp3","root","Root"); 
    Statement st=conn.createStatement(); 
    ResultSet rs=   st.executeQuery("select  password  from registerpage where username='"+username+"'"); 
    while(rs.next()){ 
     a=rs.getString(1); 
      
      
    } 
    if(a.equals(password)){ 
  response.sendRedirect("new.html"); 
 } 
 else{ 
   
 } 
} 
catch(Exception e){ 
    out.println(e); 
} 
 
%>