
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
	<%@ include file="staffmainmenu.jsp" %>
	</td>
	<td width="750">
<h4><font color="#843f8b"><div align=center>Modify Student Details</div></font></h4>

<form action="/chennaicopp/editstudentstaff2.jsp" name="valid" method="post" onsubmit="return Validation()">
    <table align="center">
<tr>
                  <td>Enter Reg NO  : </td>
                  <td><input type=text name="regno"></td>
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