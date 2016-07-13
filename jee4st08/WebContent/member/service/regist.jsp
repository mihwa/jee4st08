<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%String ctx =application.getContextPath(); %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css" />
<style type="text/css">
span.meta {
	width: 200px;
	background-color: yellow;
	float: left
}

div.joinDiv {
	border: 1px dotted gray;
	width: 80%;
	margin: 10px 50px 10px 50px
}
</style>
</head>
<body>  
	<div class="box">
		<form action="<%=ctx %>/result/regist_result.jsp" method="post">
			<span class="meta"> 이름 </span> <input type="text" name="name" /> <br />
			<span class="meta">ID </span> <input type="text" name="id" /> <br />
			<span class="meta"> 비밀번호 </span>  <input type="text" name="pw" /> <br />
			<span class="meta">SSN </span> <input type="text" name="ssn" /> <br />
			<span class="meta">전공</span> 
			<input type="radio" value="computer" name="major" checked/>컴퓨터공학부
			<input type="radio" value="mamt" name="major" />경영학부
			<input type="radio" value="math" name="major" />수학부
			<input type="radio" value="eng" name="major" />영문학부<br /><br><br/>
			<span class="meta">수강과목</span> <br/><br><br/>
			<input type="checkbox" value="java" name="subject" />Java
			<input type="checkbox" value="sql" name="subject" />SQL
			<input type="checkbox" value="cpp" name="subject" /> C++
			<input type="checkbox" value="python" name="subject" /> 파이선
			<input type="checkbox" value="delphi" name="subject" /> 델파이
			<input type="checkbox" value="html" name="subject" /> HTML
			 <br/><br><br/>
			<input type="submit" value="회원가입" /> 
			<input type="reset" value="취소" />
		</form>
	
		<a href="<%=ctx %>/index.jsp"> 
		<img src="<%=ctx %>/img/home.jpg"
			alt="home" style="width: 30px" />
		</a>
		<a href="<%=ctx %>/member/member_controller.jsp"> 
		<img
src="<%=ctx %>/img/member.jpg" alt="member" style="width: 30px" />
		</a>
	</div>
</body>
</html>