<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		UserVO user = (UserVO)session.getAttribute("user");
		String id = user.getId();
		String name = user.getName();
		String nickname = user.getNickname();
		
	%>
	<h1>id: <%=id %></h1>
	<h1>name: <%=name %></h1>
	<h1>nickname: <%=nickname %></h1>
</body>
</html>