
<html>
<head>
	<title>Student Details</title>
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
	<%@ include file="adminmainmenu.jsp" %>
	</td>
	<td width="750">
<h4><font color="#843f8b"><div align=center>Enter Student Details</div></font></h4>

<form action="/chennaicopp/studentinsert.jsp" name="valid" method="post" onsubmit="return Validation()">
    <table align="center">
<tr>
<td>Enter Register Number:
</td>
<td>
<input type=text name="registerno">
</td>
</tr>

<tr>
<td>Name:
</td>
<td><input type=text name="name">
</td>
</tr>

<tr>
<td>Gender</td>
<td>
<input type="radio" name="Gender"  value="Male" > Male 
<input type="radio" name="Gender" value="Female"> Female     </td>
</tr>

 <tr>
     <form>
      <td>
	  Date of Birth : 
	  </td>
	  <td><input type="text" name="DateofBirth"><a href="#" onClick="setYears(1947, 2030);
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
	<td>Age</td>
	<td><input type="text" name="age"></td>
</tr>

<tr>
<td>Department</td>
<td>
<input type="text" name="Department">

</td>
</tr>

<tr>
	<td>year</td>
	<td><input type="radio" name="year"  value="first" > I
		<input type="radio" name="year" value="second"> II
		<input type="radio" name="year"  value="third" > III 
		<input type="radio" name="year" value="fourth"> IV </td>
</tr>

<tr>
<td>
Batch year:
</td>
<td><input type=text name="BatchYear">
</td>
</tr>

<tr>
<td>
MQ/GQ:
</td>
<td><input type="radio" name="MQ_GQ"  value="MQ"> MQ
	<input type="radio" name="MQ_GQ" value="GQ"> GQ
</td>
</tr>



<tr>
	<td>Student Mobile No :</td>
	<td><input type="number" minlength="10" maxlength="10" name="Mobileno" oninput="if(this.value.length > 10) this.value = this.value.slice(0, 10);"></td>
</tr>

<tr>
<td>
Student Email ID:
</td>
<td><input type=email name="Email">
</td>
</tr>



<tr>
<td>
Address:
</td>
<td><input type=text name="Address">
</td>
</tr>

<tr>
<td>
Parent Name:
</td>
<td><input type=text name="ParentName">
</td>
</tr>

<tr>
<td>
Parent Moblie number:
</td>
<td><input type=text name="ParentMobNo">
</td>
</tr>

<tr>
<td>
CGPA:
</td>
<td><input type=text name="CGPA">
</td>
</tr>

<tr>
<td>
Internship company:
</td>
<td><input type=text name="Internship">
</td>
</tr>

<tr>
<td>
<tr>
	<td>Aadhar Number:</td>
	<td><input type="number" minlength="12" maxlength="12" name="AadharNo" oninput="if(this.value.length > 12) this.value = this.value.slice(0, 12);"></td>
</tr>

<tr>
	<td>Status</td>
	<td><input type="radio" name="status"  value="Active" checked > active
		<input type="radio" name="status" value="Deactive" disabled> deactive
	 </td>
</tr>

<tr>
    <td colspan="2" align="center">
        <input type="submit" value="SUBMIT" style="
            background-color: #007BFF; /* Blue color */
            color: white; /* White text */
            border: none; /* Remove border */
            border-radius: 50px; /* Make the button oval */
            padding: 5px 20px; /* Add some padding */
            font-size: 16px; /* Font size */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth transition */
            margin-top: 20px; /* Add margin to move the button down */
        " onmouseover="this.style.backgroundColor='#0056b3'" onmouseout="this.style.backgroundColor='#007BFF'">
    </td>
</tr>


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