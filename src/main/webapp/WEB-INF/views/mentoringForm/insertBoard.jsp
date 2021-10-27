<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<body>
<h1>멘토링 신청하기</h1>
	<form action="insertBoard" method="post">
		<table>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="mentee_id_seq" /><br/></td>
			</tr>
			<tr>
				<td>주제</td>
				<td>
					<input type = "radio" name = "subject" value="business">업무
					<input type = "radio" name = "subject" value="free">자유<br/></td>
			</tr>
			<tr>
				<td>멘토</td>
				<td>
				<input type = "text" name="mentor_id_seq"/><br/></td>
			</tr>
			<tr>
				<td>방 식</td>
				<td>
				<input type = "radio" name = "way" value="business">대면
					       <input type = "radio" name = "way" value="free">비대면<br/></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name = "content"></textarea><br/></td>
			</tr>
			<tr>
				<td><input type = "submit" value="신청완료">  <!-- 전송버튼 --></td>
				<td><input type = "reset" value="다시쓰기">  <!-- 초기화버튼 --></td>
			</tr>
	</table>
	</form>
</body>
</body>
</html>