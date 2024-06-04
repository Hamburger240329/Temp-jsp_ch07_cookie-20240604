<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//쿠키를 삭제하는 것이 곧 로그아웃임
		
		//쿠키 가져오기->클라이언트 컴퓨터에 저장되어 있는 쿠키들을 한번에 배열형태로 서버컴퓨터로 가져옴
		Cookie[] cookies = request.getCookies();
		
		for(int i=0;i<cookies.length;i++) {//쿠키를 하나씩 가져와서 삭제하기			
			//쿠키삭제방법->가져온 쿠키의 유효시간을 0으로 셋팅->다시 클라이언트 컴퓨터에 보냄->쿠키삭제
			cookies[i].setMaxAge(0);//쿠키의 유효시간을 0으로 셋팅
			response.addCookie(cookies[i]);//다시 클라이언트 컴퓨터에 보냄
		}
	%>
	
</body>
</html>