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
	<title>회원가입</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css"/>
<style type="text/css">
div.box {border: 5px solid powderblue;
	margin: 0 auto;
	width: 600px;
	text-align: center;}
span.meta{width: 500px; background-color:yellow; float: center}
div.joinDiv{border:0px width: 50%; margin: 10px 50px 10px 50px}
#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}

#section {
    width:350px;
    float:left;
    padding:10px;
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
    padding:5px;
}

#nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

#nav li {
    float: left;
}

#nav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

#nav li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
</style>
</head>
<body>
<%
	MemberService service=MemberServiceImpl.getInstanceImpl();
	MemberBean member=new MemberBean();
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String ssn = request.getParameter("ssn");
	String email = request.getParameter("email");
	member.setName(name);
	member.setId(id);
	member.setPw(pw);
	member.setSsn(ssn);
	member.setEmail(email);
	String result= service.regist(member);
	
%>
<div id ="header">
<h1>회원가입완료</h1>
</div>
<div style="text-align: center">
			
	<a href="<%=ctx %>/global/main.jsp"><img src="<%=ctx %>/img/home.jpg" alt="home" style="width:30px" /></a>
</div>
<div id ="footer">
Copyright � hanbit academy
</div>
</body>
</html>
