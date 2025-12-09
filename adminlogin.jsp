
<html>
<head>
	<title>Admin login</title>

<script language="javascript">

function Validation()
{

if (valid.username.value == "")
{
alert("Username is Required.");
return (false);
}

if (valid.password.value == "")
{
alert("Password is Required.");
return (false);
}

return true;
}

</script>
</head>
<link rel="stylesheet" href="newtra.css" type="text/css" />

<body>

 

    <!-- Login Dialog Box -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Admin Login</h2>
            <form action="/chennaicopp/adminlogincheck.jsp" name="valid" onsubmit="return Validation()">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <button type="submit">Submit</button>
            </form>
        </div>
    </div>

    <script src="newt.js"></script>
</body>
</html>
