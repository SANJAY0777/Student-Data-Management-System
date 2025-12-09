<%@ page import="java.sql.*"%>
<html>
<head>
	<title>Student Details Edit</title>
</head>
<link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html;">
   <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="css/calendar.css" rel="stylesheet" type="text/css">
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

String regno = request.getParameter("regno");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String dob = request.getParameter("DateofBirth");
int Age=Integer.parseInt(request.getParameter("age"));
String Dept = request.getParameter("Department");
String year= request.getParameter("year");
String Batch = request.getParameter("BatchYear");
String Mq_Gq = request.getParameter("Mq_Gq");
String Mobno = request.getParameter("Mobileno");
String email = request.getParameter("Email");
String address = request.getParameter("address");
String parentname = request.getParameter("parentname");
String parentno = request.getParameter("ParentMobNo");
float cgpa = Float.parseFloat(request.getParameter("cgpa"));
String intern = request.getParameter("intern");
String aadharno = request.getParameter("AadharNo");
String status= request.getParameter("status");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Ranjith","6379");

Statement st = cn.createStatement();
st.executeUpdate("update aistudentsdetails set name='"+name+"',gender='"+gender+"',dob='"+dob+"',age='"+Age+"',Department='"+Dept+"',year='"+year+"', batch_year='"+Batch+"', quota='"+Mq_Gq+"', Mobileno= '"+Mobno+"', email= '"+email+"', address='"+address+"', parent_name='"+parentname+"', parent_no='"+parentno+"', cgpa='"+cgpa+"', Internship= '"+intern+"', aadhar_no='"+aadharno+"', status='"+status+"'  where regno='"+regno+"' ");


%>
<table align="center">
	<tr>
		<td><h1>Student details is Successfully Modified.</h1></td>
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
<br>
<table align="center">
             <tr>
			   <td><%@ include file="footer.jsp" %></td>
             </tr>

</table>
</font>
  
</body>
</html>