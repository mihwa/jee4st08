<%@page import="member.MemberBean"%>
<%@page import="member.MemberServiceImpl"%>
<%@page import="member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    String ctx = application.getContextPath();
    %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
<title>로그인</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css"/>
</head>
<body>
<div class ="header">
<h1>로그인</h1>
</div>
<div style="text-align: center">
	
<%
 MemberService service = MemberServiceImpl.getInstanceImpl();
 MemberBean member=new MemberBean();
 String id= request.getParameter("id");
 String pw =request.getParameter("pw");
 	member.setId(id);
 	member.setPw(pw);
 	
 	String result=service.login(member);
 	if(id==""&&pw==""){
 		
 	}else{
 	if(result==""){
 		
 	}else{
 		
 	%>
 	<%=result %>님 로그인되었습니다.
 		<a href="<%=ctx %>/member/member_controller.jsp>">main으로</a>
 	
 	<%
 		
 	}
 	}
%>


</div>
<div class ="footer">
	Copyright � hanbit academy
</div>
</body>
</html>
