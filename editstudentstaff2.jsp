<%@ page import="java.sql.*"%>
<html>
<head>
<title>Birth Edit</title>

<script language="javascript">

function Validation()
{

	if (valid.registerno.value == "")
{
alert("Register NO is Required.");
return (false);
}

// if (parseInt(valid.registerno.value))
// {
// alert("Register NO is Wrong,You must type String");
// return (false);
// }

if (valid.name.value == "")
{
alert("Name is Required.");
return (false);
}

if (parseInt(valid.name.value))
{
alert("Name is Wrong,You must type String");
return (false);
}
if (valid.Gender.value == "")
{
alert("Gender is Required.");
return (false);
}
if (valid.DateofBirth.value == "")
{
alert("DOB is Required.");
return (false);
}
if(valid.age.value==""){
	alert("age is required");
	return(false);
}
if (valid.Department.value == "")
{
alert("Department is Required.");
return (false);
}
if (valid.BatchYear.value == "")
{
alert("BatchYear is Required.");
return (false);
}
if (valid.Mobileno.value == "")
{
alert("Mobileno is Required.");
return (false);
}


if (valid.Email.value == "")
{
alert("Email is Required.");
return (false);
}

if (valid.Address.value == "")
{
alert("Address is required");
return (false);
}
if (valid.ParentName.value == "")
{
alert("Parent Name is Required.");
return (false);
}

if (valid.ParentMobNo.value=="")
{
alert("Mobile number is required");
return (false);
}
if (valid.MQ_GQ.value == "")
{
alert("MQ/GQ is Required.");
return (false);
}

if (valid.Internship.value == "")
{
alert("Internship is Required.");
return (false);
}
if(valid.AadharNo.value==""){
	alert("Aadhar number is required");
	return(false);
}
if(valid.year.value == ""){
	alert("Year is required");
	return(false);
}

return true;
}
</script>


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
	<%@ include file="staffmainmenu.jsp" %>
	</td>
	<td width="750">
<h4><font color="#843f8b"><div align=center>Enter Birth Details</div></font></h4>

<form action="/chennaicopp/editstudentstaff3.jsp" name="valid" method="post" onsubmit="return Validation()">
    <table align="center">

<% 

String regno=request.getParameter("regno");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Ranjith","6379");
PreparedStatement st = cn.prepareStatement("select * from aistudentsdetails where REGNO='"+regno+"'");
ResultSet rs = st.executeQuery();

 if(rs.next())
 { 
	 String reno = rs.getString(1);
 %>

<tr>
<td>Enter Register Number:
</td>
<td>
<input type=text name="regno" value="<%=reno%>">

</td>
</tr>

<tr>
<td>Student Name:
</td>
<td><input type=text name="name" value="<%=rs.getString(2)%>">
</td>
</tr>

<tr>
<td>Gender</td>
<td>
<%
	String regen=rs.getString(3);
if(regen.equals("Male"))
	 {
	%>
<input type="radio" name="gender"  value="Male" checked> Male 
<input type="radio" name="gender" value="Female"> Female
<%
		}
	else
	 {
		%>
<input type="radio" name="gender"  value="Male" > Male 
<input type="radio" name="gender" value="Female"checked> Female
	<%
		}
	%>

</td>
</tr>

 <tr>
     <form>
      <td>
	  Date of Birth : 
	  </td>
	  <td><input type="text" name="DateofBirth" value="<%=rs.getString(4)%>"><a href="#" onClick="setYears(1947, 2030);
       showCalender(this, 'DateofBirth');">
      <img src="calender.png"></a>

    </form>
	
     <table id="calenderTable">
        <tbody id="calenderTableHead">
          <tr>
            <td colspan="4" align="center">
	          <select onChange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));" id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select>
            </td>
            <td colspan="2" align="center">
			    <select onChange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));" id="selectYear">
				</select>
			</td>
            <td align="center">
			    <a href="#" onClick="closeCalender();"><font color="#003333" size="+1">X</font></a>
			</td>
		  </tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>
    </td>
	</tr>

<tr>
	<td>Age:
	</td>
	<td><input type=text name="age" value="<%=rs.getString(5)%>">
	</td>
</tr>

<tr>
	<td>Department:
	</td>
	<td><input type=text name="Department" value="<%=rs.getString(6)%>">
	</td>
	</tr>

<tr>
<td>Year:</td>
<td>


<%
String year=rs.getString(7);
if(year.equals("first"))
	 {
	%>
<input type="radio" name="year"  value="first" checked> I 
<input type="radio" name="year" value="second"> II  
<input type="radio" name="year" value="third"> III
<input type="radio" name="year" value="fourth"> IV

<%
		}
	else if(year.equals("second"))
	 {
		%>
		<input type="radio" name="year"  value="first" > I 
		<input type="radio" name="year" value="second" checked> II  
		<input type="radio" name="year" value="third"> III
		<input type="radio" name="year" value="fourth"> IV
	<%
		}
	else if(year.equals("third"))
	 {
	%>
	<input type="radio" name="year"  value="first" > I 
	<input type="radio" name="year" value="second"> II  
	<input type="radio" name="year" value="third" checked> III
	<input type="radio" name="year" value="fourth"> IV
   <%
	 }
	 else 
	 {
	%>
	<input type="radio" name="year"  value="first" > I 
	<input type="radio" name="year" value="second"> II  
	<input type="radio" name="year" value="third"> III
	<input type="radio" name="year" value="fourth"checked> IV
	 <%
	 }
	%>
</td>
</tr>

<tr>
<td>
Batch Year :
</td>
<td><input type=text name="BatchYear" value="<%=rs.getString(8)%>">
</td>
</tr>


<tr>
<td>MQ / GQ :</td>
<td>
<% 
String Mq_Gq = rs.getString(9);
 
if(Mq_Gq.equals("MQ"))
	 {
	%>
<input type="radio" name="Mq_Gq"  value="MQ" checked> MQ 
<input type="radio" name="Mq_Gq" value="GQ"> GQ  


<%
		}
	else
	 {
		%>
		<input type="radio" name="Mq_Gq"  value="MQ" > MQ 
        <input type="radio" name="Mq_Gq" value="GQ" checked> GQ  

	<%
		}
	%>

</td>
</tr>

<tr>
<td>Student Mobile No:
</td>
<td><input type="number" minlength="10" maxlength="10" name="Mobileno" value="<%=rs.getString(10)%>" oninput="if(this.value.length > 10) this.value = this.value.slice(0, 10);">
</td>
</tr>

<tr>
<td>Student Email ID:
</td>
<td><input type=email name="Email" value="<%=rs.getString(11)%>">
</td>
</tr>

<tr>
<td>Address:
</td>
<td><input type=text name="address" value="<%=rs.getString(12)%>">
</td>
</tr>

<tr>
<td>Parent Name:
</td>
<td><input type=text name="parentname" value="<%=rs.getString(13)%>">
</td>
</tr>

<tr>
<td>Parent Mobile Number:
</td>
<td><input type=text name="ParentMobNo" value="<%=rs.getString(14)%>">
</td>
</tr>

<tr>
<td>CGPA:
</td>
<td><input type=text name="cgpa" value="<%=rs.getFloat(15)%>">
</td>
</tr>

<tr>
<td>Internship:
</td>
<td><input type=text name="intern" value="<%=rs.getString(16)%>">
</td>
</tr>

<tr>
<td>Aadhar Number:
</td>
<td><input type="number" minlength="12" maxlength="12" name="AadharNo" value="<%=rs.getString(17)%>" oninput="if(this.value.length > 12) this.value = this.value.slice(0, 12);">
</td>
</tr>

<tr>
	<td>Status :</td>
	<td>
	<% 
	String Status = rs.getString(18);
	 
	if(Status.equals("Active"))
		 {
		%>
	<input type="radio" name="status"  value="Active" checked> Active
	<input type="radio" name="status" value="Deactive"> Deactive
	
	
	<%
			}
		else
		 {
			%>
			<input type="radio" name="status"  value="Active" > Active 
			<input type="radio" name="status" value="Deactive" checked> Deactive  
	
		<%
			}
		%>

<tr><td><br></td></tr>
	<tr>
	<td colspan="2" align="center"><input type=submit value="SUBMIT"></td>
	</tr>

	</table>
	</form>  
	</td>
      
</table>
<%
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