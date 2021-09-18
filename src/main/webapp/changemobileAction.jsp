<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String email=session.getAttribute("email").toString();
String password=request.getParameter("password");
String mobilenumber=request.getParameter("mobilenumber");
int check=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
	while(rs.next()){
		check=1;
		st.executeUpdate("update users set mobileNumber='"+mobilenumber+"' where email='"+email+"'");
		response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}
	if(check==0){
		response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
	}
}catch(Exception e){
	System.out.println(e);
}
%>