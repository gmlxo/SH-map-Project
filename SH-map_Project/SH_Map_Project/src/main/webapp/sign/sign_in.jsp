<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/sign_style.css">
</head>
<body>
	<div class="wrapper">
        <div class="sign-box">
            <!-- 로그인 페이지 -->
            <h1>Sign in</h1>
            <form action="/login" method="post">
                <div class="sign-box-input">
                    <input type="text" name="id"  required>
                    <label> ID</label>
                </div>
                <div class="sign-box-input">
                    <input type="password" name="pwd" required>
                    <label> Password</label>
                </div>
                <div class="sign-label">
                    <input type="submit" value="Sign in"><br>
                    <!-- 회원가입 페이지로 이동 -->
                    <a href="signUP.jsp">Sign Up</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>