<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0" width="1050">
	<tr>
		<th bgcolor="orange" width="100">�� ��</th>
		<th bgcolor="orange" width="400">�̸���</th>
		<th bgcolor="orange" width="400">�ҼӺμ�</th>
		<th bgcolor="orange" width="150">�� å</th>
		<th bgcolor="orange" width="150">�� ��</th>
		<th bgcolor="orange" width="200">����Ʈ</th>
	</tr>


<c:forEach var="user" items="${UserList }" >
	<tr>
		<%-- <td align="center"><a href="getManager.ns?id=${board.id }">${board.id }</a></td> --%>
		<td align="center">${user.name }</td>
		<td align="center">${user.mail }</td>
		<td align="center">${user.department_seq }</td>
		<td align="center">${user.position_seq }</td>
		<td align="center"><img src="${user.photo }" style="width: 100px"; height="100px"; ></td>
		<%-- <td align="center">${user.photo }</td> --%>
		<td align="center">${user.point }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>