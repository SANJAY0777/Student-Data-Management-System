<%@ page language="java" import="java.sql.*" %>
<%
out.println("<html>");
out.println("<head><title>Login Page</title></head>");
out.println("<body bgcolor = \"#ffffff\">");
try
{
	String UNAME = request.getParameter("username");
    String PWD = request.getParameter("password");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Ranjith","6379");
PreparedStatement st = cn.prepareStatement("select * from staffaccount where UNAME=? AND PWD=?");
st.setString(1,UNAME);
st.setString(2,PWD);
ResultSet rs = st.executeQuery(); 
if(rs.next())
	{
 	response.sendRedirect("/chennaicopp/Staffloginsuccess.jsp");
	}
	else
		{
	response.sendRedirect("/chennaicopp/Staffloginfailure.jsp");
	}
}
catch(Exception e)
{
e.printStackTrace();
}

%>