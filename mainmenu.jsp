<style>
    .menu-table {
        width: 200px;
        margin-top: 20px;
        font-family: 'Arial', sans-serif;
    }

    .menu-table td {
        height: 40px;
        background-color: #311B92;
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
        line-height: 40px;
    }

    .menu-table td:hover {
        background-color: #6A1B9A;
        transform: scale(1.05);
    }
</style>

<table class="menu-table" align="center" cellspacing="5">
    <tr>
        <td><a href="/chennaicopp/adminlogin.jsp">Admin Login</a></td>
    </tr>
    <tr>
        <td><a href="/chennaicopp/Stafflogin.jsp">Staff Login</a></td>
    </tr>
    <tr>
        <td><a href="/chennaicopp/Studentlogin.jsp">Student Login</a></td>
    </tr>
</table>
