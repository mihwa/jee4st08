<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String ctx =application.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css"/>

<style>
body {background-color: yellow;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
<body>
	<div class="box">
	<embed width="100%" height="60px" src="<%=ctx %>/img/desert.jpg"/>
	<h2>내정보보기(ID) 페이지</h2>
	<img src="<%=ctx %>/img/w3schools.jpg" alt="W3Schools.com" width="104" height="142">
		<a href="<%=ctx %>/member/member_controller.jsp"><img src="<%=ctx %>/img/member.jpg" alt="user" style="width: 30px"/></a>
		<a href="<%=ctx %>/index.jsp"><img src="<%=ctx %>/img/home.jpg" alt="home" style="width: 30px"/></a>

	</div>
	</body>
</html>