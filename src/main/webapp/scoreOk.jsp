<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 평균 출력</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); //인코딩 설정
		
		String kor = request.getParameter("kor"); //국어 점수 추출
		String eng = request.getParameter("eng"); //영어 점수 추출
		String math = request.getParameter("math"); //수학 점수 추출
		
		int korInt = Integer.parseInt(kor); //문자열 국어점수인 kor->계산이 가능한 정수형 숫자로 변환
		int engInt = Integer.parseInt(eng);
		int mathInt = Integer.parseInt(math);
		
		double avg = (korInt + engInt + mathInt) / 3.0; 
	%>
	
	입력된 국어 점수 : <%= kor %> <br><br>
	입력된 영어 점수 : <%= eng %> <br><br>
	입력된 수학 점수 : <%= math %> <br><br>
	<hr>
	총 점 : <%= korInt + engInt + mathInt  %> 점 <br><br>
	평 균 : <%= avg %> 점
</body>
</html>