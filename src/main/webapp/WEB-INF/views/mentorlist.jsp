<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<%-- <script src="${pageContext.request.contextPath}/resources/common/js/jquery-3.3.1.min.js" ></script> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<!-- common CSS -->
<link rel="stylesheet" href="<c:url value='/resources/common/css/common.css'/>" >

<!-- Hantick CSS -->
<!-- ? 왜 적용안됨 -->
<link rel="stylesheet" href="css/style.css" type="text/css">

<style type="text/css">
	.mentor_list {
		display: flex;
		flex-wrap: wrap; /* 상위요소 너비보다 하위요소 너비가 큰 경우 줄바꿈*/
		justify-content: space-between;
	}
	.mentor_list .card {
		border: 1px solid #eee;
		border-radius: 5px;
		height: 350px;
		width: 250px;
		padding: 5px;
		margin-bottom: 10px;
	}
</style>

<title>멘토리스트</title>
</head>

<body>
<!-- Nav Bar -->
<nav class="navbar navbar-expand navbar-dark bg-primary">
  <a class="navbar-brand" href="index">Hantick</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExample02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index">메인화면 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="mentorlist">1:1 멘토링</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-md-0">
      <input class="form-control" type="text" placeholder="Search">
    </form>
  </div>
</nav>

<!-- Mentor List -->
<h1>Mentor List</h1>
<div class="mentor_list">
	<!-- user 정보를 반복문을 통해 card 형식으로 출력함 -->
	<!-- 직책, 부서 dto 생성해야함 -->
	<c:forEach var="user_info" items="${mentorList}">
	<div class="card">
		<div class="img">
			<img src=".img/card1.jpg" alt="">
		</div>
		<div class="text">
			<h3>부서명:${user_info.department_name}, 이름:${user_info.name}, 직책: ${user_info.position_name}</h3>
			<button type="button" class="btn btn-primary">선택하기</button>
			</c:forEach>
		</div>
	</div>
</div>

</body>
</html>

