<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%
    String ctx = application.getContextPath();
    %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>회원관리</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css" />
</head>
<body>
<div class="header">
<h2>회원관리</h2>
</div>
	<div style="text-align: center">
		<div style="width: 300px; margin: 0 auto; text-align: left;">
			<ol>
				<li><a href="<%=ctx %>/member/service/regist.jsp">회원가입</a></li>
				<li><a href="<%=ctx %>/member/service/find_by_id.jsp">내정보보기</a></li>
				<li><a href="<%=ctx %>/member/service/update.jsp">내정보수정</a></li>
				<li><a href="<%=ctx %>/member/service/delete.jsp">탈퇴</a></li>
				<li><a href="<%=ctx %>/member/service/login.jsp">로그인</a></li>
				<li><a href="<%=ctx %>/member/service/logout.jsp">로그아웃</a></li>
				<li><a href="<%=ctx %>/member/service/list.jsp">리스트</a></li>
				<li><a href="<%=ctx %>/member/service/find_by.jsp">검색</a></li>
				<li><a href="<%=ctx %>/member/service/count.jsp">전체 회원수</a></li>
			</ol>
		</div>
	
	</div>
	<div class="footer">
	Copyright � hanbit academy
	</div>
</body>
</html>
