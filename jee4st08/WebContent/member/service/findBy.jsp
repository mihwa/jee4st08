<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String ctx =application.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css"/>
<style type="text/css">
iframe.ifrm {
	border: none;
	width: 400px;
	height: 400px;
}
</style>
</head>
<body>
	<div class="box">
	<h2>정보검색</h2><br>
	<iframe src="image.jsp" class="ifrm"></iframe><br/>
		<a href="<%=ctx %>/member/member_controller.jsp"><img src="<%=ctx %>/img/member.jpg" alt="user" style="width: 30px"/></a>
		<a href="<%=ctx %>/index.jsp"><img src="<%=ctx %>/img/home.jpg" alt="home" style="width: 30px"/></a>

		</div>
	</body>
</html>