<%@ page language="java" import="java.sql.*" %>
<html>
<head>
	<title>Student Management System</title>
</head>
<link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
<body>
<table align="center" width="900">
<tr>
	<td colspan="2">
	<%@ include file="header.jsp" %>
	</td>
</tr>

<tr>
	<td width="150" bgcolor="#86AEDF">
	<%@ include file="adminmainmenu.jsp" %>
	</td>
	<td width="750">

<%

try
{

String regno = request.getParameter("registerno");
String name = request.getParameter("name");
String gender = request.getParameter("Gender");
String dob = request.getParameter("DateofBirth");
int Age=Integer.parseInt(request.getParameter("age"));
String Dept = request.getParameter("Department");
String year= request.getParameter("year");
String Batch = request.getParameter("BatchYear");
String Mq_Gq = request.getParameter("MQ_GQ");
String Mobno = request.getParameter("Mobileno");
String email = request.getParameter("Email");
String address = request.getParameter("Address");
String parentname = request.getParameter("ParentName");
String parentno = request.getParameter("ParentMobNo");
float cgpa = Float.parseFloat(request.getParameter("CGPA"));
String intern = request.getParameter("Internship");
String aadharno = request.getParameter("AadharNo");
String status= request.getParameter("status");


Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Ranjith","6379");
PreparedStatement st = cn.prepareStatement("insert into aistudentsdetails values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

st.setString(1, regno);
st.setString(2, name);
st.setString(3, gender);
st.setString(4, dob);
st.setInt(5,Age);
st.setString(6, Dept);
st.setString(7,year);
st.setString(8, Batch);
st.setString(9, Mq_Gq);
st.setString(10, Mobno);
st.setString(11, email);
st.setString(12, address);
st.setString(13, parentname);
st.setString(14, parentno);
st.setFloat(15, cgpa);
st.setString(16, intern);
st.setString(17, aadharno);
st.setString(18,status);

st.executeUpdate();
%>
<table align="center">
	<tr>
		<td><h1>Student details is Successfully inserted.</h1></td>
	</tr>
</table>
<br><br>
<table align="center">
	<tr><td><a href="/chennaicopp/index.jsp" class=bblink><font color="red">Go To Main Page</font></a></td></tr>
</table>
<br>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

</td>  
</table>
<br>
<table align="center">
             <tr>
			   <td><%@ include file="footer.jsp" %></td>
             </tr>

</table>
</font>
  
</body>
</html>