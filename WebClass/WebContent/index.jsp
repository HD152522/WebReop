<!-- 1. Directive tag(������) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--2. comment tag(jsp �ּ�) --%>
	<%--3. Declaration tag --%>
	
	<%--4. Scriptlet tag (�ڹ� �״�� �ۼ�) --%>
	<%! private static final String DEFAULT_NAME = "Guest"; %>
	
	<%
		//�ڹ��ڵ带 �״�� �ۼ�
		String name = request.getParameter("name");
		if(name == null) name = DEFAULT_NAME;
	%>
	
	<%--5. Expression tag(ǥ����) --%>
	<h1>Hello, <%=name %></h1>
	
	
</body>
</html>