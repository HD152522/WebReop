<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <title>ohsebin's Blog</title>

    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/ani.js">

    </script>
    
    <link rel="stylesheet" href="css/style.css">
    <script src="js/ani.js"></script>
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="nav">
      <a class="navbar-brand" href="#home">Troisième Humanité</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="#p1">작품 소개 <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#p2">작가</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#p3">그 외 작품</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#p4 ">회원가입</a>
          </li>
        </ul>
        
        <%
        	UserVO user = (UserVO)session.getAttribute("user");
        	
        	if(user == null){   
        %>
        <form class="form-inline my-2 my-lg-0" id="Loginform" action="/WebClass/bloglogin" method="post">
          <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="Search" id="id" name="id" value="<%=request.getParameter("id")==null? "":request.getParameter("id")  %>" required>
          <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="Search" id="pwd" name="pwd" value="<%=request.getParameter("pwd")==null? "":request.getParameter("pwd")  %>" required>
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
        </form>
        <%}else{ %>
        <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
		    <li class="nav-item dropdown">
		      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    	<%=user.getName() %>님
		      </a>
		      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
		      
		      	<form action="/WebClass/bloglogout" method="post">
		      		<button type="submit" class="dropdown-item">Sign out</button>
		      	</form>
		      	
		      </div>
		    </li>
	    </ul>
        <%} %>
      </div>
    </nav>   <!-- 여기까지 상단바 -->

    <%@ include file="blog/content.jsp" %>
    <%@ include file="modal.jsp" %>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <!-- jquery 이용-->
    
	<script>

	<%
		if("error".equals(request.getAttribute("msg"))) {
	%>
	var myModal = $('#myModal');
	myModal.find('.modal-title').text('Login Error');
	myModal.find('.modal-body').text('Invalid username or password');
	myModal.modal();
	<%
		}
	%>
	
	</script>


  </body>
</html>
