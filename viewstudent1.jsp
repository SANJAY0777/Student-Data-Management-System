<html>
<head>
	<title>Student Details view</title>
</head>
<link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
<body>
<table width="800" border="0" align="center">
<tr>
	<td colspan="2">
	<%@ include file="header.jsp" %>
	</td>
</tr>

<tr>
	<td width="100" bgcolor="#86AEDF">
	<%@ include file="Studentmainmenu.jsp" %>
	</td>

	<td width="750">
<table width="100%" border="0">

<tr>
		<td width="52%">

		<table width="100%" border="0" cellspacing="5">

<p>&nbsp;</p>
<p>&nbsp;</p>
<table valign=top width=100%>
<tr>
<td>
<table width="151" height="134" border="0" cellspacing="5">
  <tr>
    <td>&nbsp;</td>
   </tr>
  <tr>
    <td bgcolor="#C5A7C5">&nbsp;</td>
    <td>&nbsp;</td>
    
  </tr>
  <tr>
    <td bgcolor="#996699">&nbsp;</td>
    <td bgcolor="#C5A7C5">&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td bgcolor="#862D86">&nbsp;</td>
    <td bgcolor="#996699">&nbsp;</td>
    <td bgcolor="#B38CB3">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
	<td width="750">
<h4><font color="#843f8b"><div align=center>View Student Details</div></font></h4>

<form action="/chennaicopp/viewstudent2.jsp" name="valid" method="post" onsubmit="return Validation()">
    <table align="center">
<tr>
                  <td>Enter Reg NO  : </td>
                  <td><input type=text name="regno"></td>
            </tr>


<tr><td><br></td></tr>
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
	</form>  
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