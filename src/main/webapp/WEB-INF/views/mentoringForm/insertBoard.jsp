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
<h1>���丵 ��û�ϱ�</h1>
	<form action="insertBoard" method="post">
		<table>
			<tr>
				<td>�� ��</td>
				<td><input type="text" name="mentee_id_seq" /><br/></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<input type = "radio" name = "subject" value="business">����
					<input type = "radio" name = "subject" value="free">����<br/></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
				<input type = "text" name="mentor_id_seq"/><br/></td>
			</tr>
			<tr>
				<td>�� ��</td>
				<td>
				<input type = "radio" name = "way" value="business">���
					       <input type = "radio" name = "way" value="free">����<br/></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea rows="10" cols="50" name = "content"></textarea><br/></td>
			</tr>
			<tr>
				<td><input type = "submit" value="��û�Ϸ�">  <!-- ���۹�ư --></td>
				<td><input type = "reset" value="�ٽþ���">  <!-- �ʱ�ȭ��ư --></td>
			</tr>
	</table>
	</form>
</body>
</body>
</html>