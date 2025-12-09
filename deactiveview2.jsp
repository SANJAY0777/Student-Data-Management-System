<%@ page language="java" import="java.sql.*" %>
<html>
<head>
    <title>Student Details Management</title>
    <link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            margin: 0 auto;
        }

        .detail-label {
            font-weight: bold;
        }

        .detail-item {
            margin-bottom: 15px;
        }

        @media screen and (max-width: 768px) {
            .detail-item {
                font-size: 12px;
            }
        }

        @media screen and (max-width: 480px) {
            .detail-item {
                font-size: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <table align="center">
            <tr>
                <td colspan="2">
                    <%@ include file="header.jsp" %>
                </td>
            </tr>

            <tr>
                <td width="150" bgcolor="#86AEDF">
                    <%@ include file="Studentmainmenu.jsp" %>
                </td>
                <td>

                <%
                try
                {
                    String regno = request.getParameter("regno");
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Ranjith","6379");
                    PreparedStatement st = cn.prepareStatement("select * from deactivestudents where REGNO=?");
                    st.setString(1, regno);
                    ResultSet rs = st.executeQuery();

                    if (rs.next()) {
                %>
                <h2 align="center">Deactive Student Details</h2><br>
<div align="center">
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>Detail</th>
            <th>Information</th>
        </tr>
        <tr>
            <td>Student Reg No:</td>
            <td><%= rs.getString(1) %></td>
        </tr>
        <tr>
            <td>Student Name:</td>
            <td><%= rs.getString(2) %></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td><%= rs.getString(3) %></td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td><%= rs.getString(4) %></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><%= rs.getInt(5) %></td>
        </tr>
        <tr>
            <td>Department:</td>
            <td><%= rs.getString(6) %></td>
        </tr>
        <tr>
            <td>Year:</td>
            <td><%= rs.getString(7) %></td>
        </tr>
        <tr>
            <td>Batch Year:</td>
            <td><%= rs.getString(8) %></td>
        </tr>
        <tr>
            <td>Quota:</td>
            <td><%= rs.getString(9) %></td>
        </tr>
        <tr>
            <td>Mobile No:</td>
            <td><%= rs.getString(10) %></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><%= rs.getString(11) %></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><%= rs.getString(12) %></td>
        </tr>
        <tr>
            <td>Parent Name:</td>
            <td><%= rs.getString(13) %></td>
        </tr>
        <tr>
            <td>Parent Number:</td>
            <td><%= rs.getString(14) %></td>
        </tr>
        <tr>
            <td>CGPA:</td>
            <td><%= rs.getFloat(15) %></td>
        </tr>
        <tr>
            <td>Internship:</td>
            <td><%= rs.getString(16) %></td>
        </tr>
        <tr>
            <td>Aadhar Number:</td>
            <td><%= rs.getString(17) %></td>
        </tr>
        <tr>
            <td>Status:</td>
            <td><%= rs.getString(18) %></td>
        </tr>
    </table>
</div>

                <%
                    } else {
                        out.println("<h3 align='center'>No record found for the provided Reg No.</h3>");
                    }
                    rs.close();
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
                <br><br>
                <table align="center">
                    <tr>
						<td><a href="/chennaicopp/index.jsp" class="bblink"><font color="red">Go To Main Page</font></a></td>
					</tr>
                </table>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
