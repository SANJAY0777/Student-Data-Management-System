<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style>
    /* General Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
    }

    .menu-container {
        text-align: center;
        margin-top: 20px;
    }

    .menu-table {
        width: 200px;
        margin: 20px auto;
    }

    .menu-table td {
        position: relative;
        height: 50px;
        background-color: #86AEDF;
        text-align: center;
        border-radius: 5px;
        transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        font-size: 16px;
        color: white;
        font-weight: bold;
    }

    .menu-table a {
        color: white;
        text-decoration: none;
        display: block;
        line-height: 50px;
    }

    .menu-table i {
        margin-right: 8px;
    }

    /* Hover and Active States */
    .menu-table td:hover {
        background: linear-gradient(45deg, #6A1B9A, #86AEDF, #4CAF50, #FF9800);
        background-size: 300% 300%;
        animation: gradientShift 4s ease infinite;
        transform: scale(1.05);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .menu-table .active {
        background-color: #4CAF50;
        transform: scale(1.1);
    }

    /* Tooltip Styles */
    .menu-table td:hover::after {
        content: attr(data-tooltip);
        position: absolute;
        top: -35px;
        left: 50%;
        transform: translateX(-50%);
        background-color: #6A1B9A;
        color: white;
        padding: 5px 10px;
        border-radius: 5px;
        font-size: 12px;
        white-space: nowrap;
    }

    @keyframes gradientShift {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Search Box Styles */
    #menuSearch {
        width: 200px;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
</style>

<div class="menu-container">
    <input type="text" id="menuSearch" placeholder="Search..." onkeyup="filterMenu()">

    <table class="menu-table" border="0" align="center" cellspacing="5">
        <tr>
            <!-- <td data-tooltip="Go to Home Page"><a href="/chennaicopp/index.jsp"><i class="fas fa-home"></i> Home</a></td> -->
        </tr>
        <tr>
            <td data-tooltip="Add a new student"><a href="/chennaicopp/addstudent1.jsp"><i class="fas fa-user-plus"></i> Add Student Details</a></td>
        </tr>
        <tr>
            <td data-tooltip="Update student information"><a href="/chennaicopp/editstudent1.jsp"><i class="fas fa-edit"></i> Update Student Details</a></td>
        </tr>
        <tr>
            <td data-tooltip="View all student records"><a href="/chennaicopp/viewall2.jsp"><i class="fas fa-users"></i> View Students Details</a></td>
        </tr>
        <tr>
            <td data-tooltip="Deactivate a student"><a href="/chennaicopp/studentdelete.jsp"><i class="fas fa-user-slash"></i> Deactivate Student</a></td>
        </tr>
        <tr>
            <td data-tooltip="View inactive students"><a href="/chennaicopp/viewall.jsp"><i class="fas fa-eye-slash"></i> Deactive Student Details</a></td>
        </tr>
        <tr>
            <td data-tooltip="Log out as admin"><a href="/chennaicopp/index.jsp"><i class="fas fa-sign-out-alt"></i> Admin Out</a></td>
        </tr>
    </table>
</div>

<script>
    function filterMenu() {
        var input, filter, table, tr, td, i;
        input = document.getElementById("menuSearch");
        filter = input.value.toUpperCase();
        table = document.querySelector(".menu-table");
        tr = table.getElementsByTagName("tr");

        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                if (td.textContent.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }       
        }
    }
</script>
