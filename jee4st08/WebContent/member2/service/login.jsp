<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="../../css/member.css"/>

</head>
<body>
	<div class="box">
		<form action="../result/login_result.jsp" method="post">
		
			<span class="meta">ID </span> <input type="text" name="id" /> <br />
			<span class="meta"> 비밀번호 </span>  <input type="text" name="pw" /> <br />
			
			<input type="submit" value="회원가입" /> 
			<input type="reset" value="취소" />
		</form>
		<a href="../memberController.html"><img src="../../img/member.jpg" alt="user" style="width: 30px"/></a>
		<a href="../../index.html"><img src="../../img/home.jpg" alt="home" style="width: 30px"/></a>

	</div>
</body>
</html>	