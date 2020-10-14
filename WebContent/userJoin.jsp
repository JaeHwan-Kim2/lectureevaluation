<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>강의평가 웹 사이트</title>
	<!-- 부트스트랩 CSS 추가하기 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- 커스텁 CSS 추가하기 -->
	<link rel="stylesheet" href="./css/custom.css">	
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if(userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 되었습니다.');");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
		script.close();	
	}
%>	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp">강의평가 웹 사이트</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>	
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="index.jsp">메인</a>
				</li>
				<li class="nav-itm dropdown">
					 <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
						회원 관리
					</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
<%
	if(userID == null){
%>
						<a class="dropdown-item" href="userLogin.jsp">로그인</a>
						<a class="dropdown-item" href="userJoin.jsp">회원가입</a>
<%
	} else {
%>						
						<a class="dropdown-item" href="userLogout.jsp">로그아웃</a>
<%
	}
%>
					</div>
				</li>
			</ul>
		</div>
	</nav>
	<section class="container mt-3" style="max-width: 560px;">
		<form method="post" action="./userRegisterAction.jsp">
			<div class="jumbotron" style="padding-top: 20px;">
				<div class="form-group">
					<label>아이디</label>
					<input type="text" placeholder="아이디" name="userID" class="form-control">				
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="password" placeholder="비밀번호" name="userPassword" class="form-control">	
				</div>
				<div class="form-group">
					<label>이메일</label>
					<input type="email" placeholder="이메일" name="userEmail" class="form-control">	
				</div>
				<input type="submit" class="btn btn-primary form-control" value="회원가입">	
			</div>
		</form>	
	</section>
	<footer class = "bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">
		Copyright &copy; 동국대 경주캠퍼스 김재환 
		
	<script src= "./js/jquery.min.js"></script>
	<script src= "./js/popper.js"></script>
	<script src= "./js/bootstrap.min.js"></script>
	
</body>
</html>