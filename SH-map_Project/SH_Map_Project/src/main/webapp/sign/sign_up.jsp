<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign up</title>
</head>
<body>
	<div class="wrapper">
        <div class="sign-box">
            <h1>Sign up</h1>
            <!-- 회원가입 페이지 -->
            <form action="/signUp" method="post">
                <div class="sign-box-input">
                    <input type="text" name="id" required>
                    <label>ID</label>
                </div>
                <div class="sign-box-input">
                    <input type="password" name="pwd" required>
                    <label>Password</label>
                </div>
                <div class="sign-box-input">
                    <input type="text" name="Phone_number" required>
                    <label>Phone Number</label>
                </div>
                <div class="sign-label">
                    <input type="submit" value="Sign Up" id="signUp-but"><br>
                </div>
            </form>
        </div>
    </div>
</body>
</body>
</html>