
<html>
<head>
	<title>Staff login</title>
	
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
	<%@ include file="mainmenu.jsp" %>
	</td>
	<td width="750">

<form action="/chennaicopp/Stafflogin.jsp" method="post">
	<table align="center">
		<center><h3>Your staff Login is Failure,Please Click the Relogin Button</h3></center>

<br>
		<tr>
			<td>
				<input type="submit" value="ReLogin" id="submitButton" style="
					background-color: #209c3d; /* Blue color */
					color: white; /* White text */
					padding: 10px 20px; /* Padding inside the button */
					text-align: center; /* Center the text */
					text-decoration: none; /* Remove underline */
					display: inline-block; /* Make it behave like a button */
					border-radius: 50px; /* Rounded corners */
					font-size: 16px; /* Font size */
					font-weight: bold; /* Bold text */
					cursor: pointer; /* Pointer cursor on hover */
					transition: transform 0.5s ease, opacity 0.5s ease; /* Smooth transition */
					position: relative;
				">
			</td>
		</tr>
	</table>
	
</form>
      
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