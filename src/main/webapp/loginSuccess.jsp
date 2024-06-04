<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		//쿠키 가져오기->클라이언트 컴퓨터에 저장되어 있는 쿠키들을 한번에 배열형태로 서버컴퓨터로 가져옴
		Cookie[] cookies = request.getCookies();
		
		for(int i=0;i<cookies.length;i++) {			
			out.println("쿠키의 이름:" + cookies[i].getName() + "<br>");//쿠키의 이름
			out.println("쿠키의 값:" + cookies[i].getValue() + "<br>");//쿠키의 값
		}
	%>

	<h3>로그인 성공</h3>
	<hr>
	로그인에 성공하셨습니다.<br><br>
	<a href="cookieTest.jsp">쿠키 테스트</a><br><br>
	<a href="logout.jsp">로그아웃</a>
	
</body>
</html>