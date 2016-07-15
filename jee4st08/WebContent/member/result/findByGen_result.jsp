<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="member.MemberService" %>
    <%@page import="member.MemberServiceImpl" %>
    <%@page import="member.MemberService" %>

    <%String ctx =application.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css"/>

</head>
<body>
	<div class="box">	
	<h2>검색(성별) 페이지</h2><br/>
		<a href="<%=ctx %>/member/member_controller.jsp"><img src="<%=ctx %>/img/member.jpg" alt="user" style="width: 30px"/></a>
		<a href="<%=ctx %>/index.jsp"><img src="<%=ctx %>/img/home.jpg" alt="home" style="width: 30px"/></a>

	</div>
</html>