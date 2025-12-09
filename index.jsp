<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Knowledge Institute of Technology</title>
    <link rel="stylesheet" href="/chennaicopp/css/mystyle.css" type="text/css" />
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            height: 100vh;
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            width:90%;
        }
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding-left: 26%;
            height: 100%;
            width: 100%;
            opacity: 0.7;
        }
        .login-box {
            background-color: #e3e3e3;
            border-radius: 12px;
            box-shadow: 0 0 25px rgba(0,0,0,0.15);
            padding: 20px;
            text-align: center;
            width: 300px;
    
        }
        .login-button {
            display: block;
            text-decoration: none;
            color: #ffffff;
            font-weight: bold;
            padding: 12px 25px;
            border-radius: 25px;
            background-color: #357ABD;
            box-shadow: 0 8px 12px rgba(0,0,0,0.2);
            transition: transform 0.3s, background-color 0.3s;
            margin-bottom: 10px;
        }
        .login-button:hover {
            transform: translateY(-3px);
            background-color: #022248;
        }
        .greysmall {
            color: #333;
            font-size: 12px;
            text-align: center;
            margin-top: 590px;
        }
    </style>
</head>
<body style="background-image: url('kio.jpg');"> 

    <div class="login-container">
        <div class="login-box">
            <a href="/chennaicopp/Studentlogin.jsp" class="login-button">Student Login</a>
            <a href="/chennaicopp/Stafflogin.jsp" class="login-button">Staff Login</a>
            <a href="/chennaicopp/adminlogin.jsp" class="login-button">Admin Login</a>
        </div>
    </div>

    <div class="greysmall" style="bottom: 100%;">(C) All Rights are Reserved with Ranjith</div>

</body>
</html>
