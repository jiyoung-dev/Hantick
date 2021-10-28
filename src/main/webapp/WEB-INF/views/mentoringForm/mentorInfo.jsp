<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>멘토의 정보</h1>
${MentorInfo } </br>
${MentorInfo.name } </br> 
${MentorInfo.department_name } </br>
${MentorInfo.position_name } </br>
${MentorInfo.mail } </br>
</body>
</html>