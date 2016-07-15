<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ page import="member.MemberService" %>
    <%@ page import="member.MemberServiceImpl"%>
    <%@ page import="member.MemberBean"%>
    <%String ctx =application.getContextPath(); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>로그인</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css"/>

</head>
<body>
		<div class="box">
		<%
		
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member =new MemberBean();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if(id==null || pw==null){
			%>
			<h2>로그인 실패!!</h2>
			<a href="<%=ctx %>/member/service/login.jsp">다시 시도하기</a>
			<%	
		}else{
			
		}
		member.setId(id);
		member.setPw(pw);
		String name = service.login(member);
		if(name==null){
			%>
			<h2>로그인 실패!!</h2>
			<a href="<%=ctx %>/member/service/login.jsp">다시 시도하기</a>
			<%
		}
		
		if(id !=null 
					&& id.equals("hong")
					&& pw !=null
					&& pw.equals("1")){
			
			response.sendRedirect(ctx+"/global/main.jsp");
		}else{
			application.log("넘어온 ID:"+id);
			application.log("넘어온 PW:"+pw);
			if(id==""|| pw=="")
			
			%>
			<h2>로그인 실패!!</h2>
			<a href="<%=ctx %>/member/service/login.jsp">다시 시도하기</a>
			<%
			application.log("리얼패스"+application.getContextPath());
		}
	%>

	</div>
</body>
</html>	