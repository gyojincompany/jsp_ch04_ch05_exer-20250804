<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String adminId = request.getParameter("adminId");
		String adminPw = request.getParameter("adminPw");
		
		if(adminId.equals("admin") && adminPw.equals("1234")) { //로그인 성공
	%>
		<h2>"안녕하세요 관리자님. 로그인 성공하셨습니다!"</h2>
	<%	
		} else {
	%>
		<h2>"관리자 로그인 실패하셨습니다!"</h2>
		<a href="adminLogin.jsp">관리자 로그인 바로가기</a>
	<%
		}
	%>
</body>
</html>