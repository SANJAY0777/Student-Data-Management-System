<%@ page language="java" import="java.sql.*" %>
<html>
<head>
    <title>Student Details</title>
    <link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        table {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #86AEDF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a.bblink {
            text-decoration: none;
            color: red;
            font-weight: bold;
        }

        a.bblink:hover {
            color: darkred;
        }

        .container {
            width: 90%;
            margin: 0 auto;
        }

        .form-container {
            text-align: center; /* Center the form */
            margin-bottom: 20px;
        }

        .form-container input[type="text"],
        .form-container input[type="submit"] {
            font-size: 13px;
            padding: 10px;
            margin: 5px;
        }

        .form-container input[type="submit"] {
            background-color: #86AEDF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #6A1B9A;
        }

        @media screen and (max-width: 768px) {
            table {
                width: 100%;
            }

            th, td {
                font-size: 12px;
                padding: 5px;
            }
        }

        @media screen and (max-width: 480px) {
            th, td {
                font-size: 10px;
                padding: 3px;
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
                    <%@ include file="staffmainmenu.jsp" %>
                </td>
                <td>
                    <%
                    try {
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Ranjith","6379");
                        PreparedStatement st = cn.prepareStatement("select * from aistudentsdetails");
                        ResultSet rs = st.executeQuery();
                    %>

                    <h2 align="center">Student Details</h2>

                    <div class="form-container">
                        <form action="/chennaicopp/viewstudent2.jsp" name="valid" method="post" onsubmit="return Validation()">
                            <table align="center" style="margin: 0 auto;">
                                <tr>
                                    <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Enter Reg No: <input type="text" name="regno"><input type="submit" value="SUBMIT"></td><td></td>
                                    
                                </tr>
                                <br>
                            
                            </table>
                        </form>
                    </div>

                    <table border="3" align="center">
                        <tr>
                            <th>StudentRegNO</th><th>StudentName</th><th>Gender</th><th>DateOfBirth</th>
                            <th>Age</th><th>Department</th><th>Year</th><th>BatchYear</th><th>Quota</th>
                            <th>StudentMobileNo</th><th>Email</th><th>Address</th><th>ParentName</th>
                            <th>ParentNumber</th><th>CGPA</th><th>Internship</th><th>AadharNumber</th><th>Status</th>
                        </tr>
                        <%
                        while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getString(1) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td>
                            <td><%= rs.getInt(5) %></td><td><%= rs.getString(6) %></td><td><%= rs.getString(7) %></td><td><%= rs.getString(8) %></td>
                            <td><%= rs.getString(9) %></td><td><%= rs.getString(10) %></td><td><%= rs.getString(11) %></td><td><%= rs.getString(12) %></td>
                            <td><%= rs.getString(13) %></td><td><%= rs.getString(14) %></td><td><%= rs.getFloat(15) %></td><td><%= rs.getString(16) %></td>
                            <td><%= rs.getString(17) %></td><td><%= rs.getString(18) %></td>
                        </tr>
                        <%
                        }
                        %>
                    </table><br><br>

                    <table align="center">
                        <tr>
                            <td>
                                <a href="/chennaicopp/index.jsp" class="bblink" style="
                                    background-color: #28a745; /* Green color */
                                    color: white; /* White text */
                                    padding: 10px 20px; /* Padding inside the button */
                                    text-align: center; /* Center the text */
                                    text-decoration: none; /* Remove underline */
                                    display: inline-block; /* Make it behave like a button */
                                    border-radius: 5px; /* Rounded corners */
                                    font-size: 16px; /* Font size */
                                    font-weight: bold; /* Bold text */
                                    cursor: pointer; /* Pointer cursor on hover */
                                    transition: background-color 0.3s ease; /* Smooth transition */
                                " onmouseover="this.style.backgroundColor='#218838'" onmouseout="this.style.backgroundColor='#28a745'">
                                    Go To Main Page
                                </a>
                            </td>
                        </tr>
                    </table>
                    

                    <%
                    rs.close();
                    } catch(Exception e) {
                        e.printStackTrace();
                    }
                    %>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
