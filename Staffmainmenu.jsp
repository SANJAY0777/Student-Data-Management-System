<style>
    .menu-table {
        width: 200px; /* Adjusted width */
        font-family: 'Arial', sans-serif;
        margin-top: 20px;
    }

    .menu-table td {
        height: 50px; /* Increased height */
        background-color: #86AEDF; /* Consistent color with sidebar */
        text-align: center;
        border-radius: 5px;
        transition: background-color 0.3s ease, transform 0.3s ease;
        font-size: 16px;
        color: white;
        font-weight: bold;
    }

    .menu-table a {
        color: white;
        text-decoration: none;
        display: block;
        line-height: 50px; /* Center text vertically */
    }

    .menu-table td:hover {
        background-color: #6A1B9A; /* Hover color */
        transform: scale(1.05);
    }
</style>

<table class="menu-table" border="0" align="center" cellspacing="5">
    <tr>
        <td><a href="/chennaicopp/index.jsp">Home</a></td>
    </tr>
    <tr>
        <td><a href="/chennaicopp/addstudent.jsp">Add Student Details</a></td>
    </tr>
    <tr>
        <td><a href="/chennaicopp/editstudentstaff1.jsp">Update Student Details</a></td>
    </tr>
    <tr>
        <td><a href="/chennaicopp/staffviewall2.jsp">View Students Details</a></td>
    </tr>
    <tr>
        <td><a href="/chennaicopp/index.jsp">Admin Out</a></td>
    </tr>
</table>