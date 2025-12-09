<%@ page language="java" import="java.sql.*" %>
<html>
<head>
    <title>Student Details Management</title>
    <link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
    <!-- <style>
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
    </style> -->
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
                    <%@ include file="adminmainmenu.jsp" %>
                </td>
                <td>

                <%
                try
                {
                    String regno = request.getParameter("regno");
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","Ranjith","6379");

                    PreparedStatement st = cn.prepareStatement("SELECT * FROM aistudentsdetails WHERE regno = ?");
                    st.setString(1, regno);
                    ResultSet rs = st.executeQuery();

                    if (rs.next()) {  // Ensure there's a result to process
                        String name = rs.getString(2);   
                        String gender = rs.getString(3);
                        String dob = rs.getString(4);  
                        int age = rs.getInt(5);      
                        String dept = rs.getString(6);   
                        String year = rs.getString(7);   
                        String batch = rs.getString(8);
                        String mq_gq = rs.getString(9); 
                        String mobno = rs.getString(10); 
                        String email = rs.getString(11);
                        String address = rs.getString(12);
                        String parentname = rs.getString(13); 
                        String parentno = rs.getString(14); 
                        float cgpa = rs.getFloat(15); 
                        String intern = rs.getString(16);
                        String aadharno = rs.getString(17);
                        String status = rs.getString(18); 
                    
                        if ("Deactive".equalsIgnoreCase(status)) {
                            PreparedStatement copySt = cn.prepareStatement(
                                "INSERT INTO deactivestudents (regno, name, gender, DOB, age, Department, year, batch_year, Quota, MobileNo, email, address, parent_name, parent_no, cgpa, Internship, Aadhar_No, status) " +
                                "SELECT regno, name, gender, DOB, age, Department, year, batch_year, Quota, MobileNo, email, address, parent_name, parent_no, cgpa, Internship, Aadhar_No, status FROM aistudentsdetails WHERE regno = ?"
                            );
                            copySt.setString(1, regno);
                            copySt.executeUpdate();
                
                            PreparedStatement deleteSt = cn.prepareStatement("DELETE FROM aistudentsdetails WHERE regno = ?");
                            deleteSt.setString(1, regno);
                            deleteSt.executeUpdate();  %>

                            <table align="center">
                                <tr>
                                    <td><h1>Student detail successfully deactivated.</h1></td>
                                </tr>
                            </table>
                            <br><br>
                        <%
                        } else{
                            out.println("<h1>NO student found in this register name</h1>");
                        }
                

                %>

                <table align="center">
                    <tr><td><a href="/chennaicopp/index.jsp" class="bblink"><font color="red">Go To Main Page</font></a></td></tr>
                </table>
                <br>
                <%
                    }
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
