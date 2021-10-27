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
<link rel="stylesheet" href="css/style.css" type="text/css">

<title>멘토리스트</title>
</head>

<body>
<!-- Nav Bar -->
<nav class="navbar navbar-expand navbar-dark bg-success">
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

<!-- Top Container -->
<div class="top-container">
	<!-- Random Button -->
	<div class="random-btn">
		<button type="button" onclick="fn_goMentoringForm()" class="btn btn-success" id="btnRandom" value="랜덤매칭">랜덤매칭</button>
	</div>

	<!-- Select Box -->
	<div class="select-box" >
		<select name = "department-category">
			<option value="" selected="selected">전체보기</option>
			<option value="">IPCC1</option>
			<option value="">IPCC2</option>
			<option value="">IPCC3</option>
			<option value="">AICC</option>
			<option value="">SE</option>
		</select>
	</div>
</div>

<!-- 전체 멘토리스트 조회 -->
<div class="mentor-list">
	<div class="container">
		<!-- user 정보를 반복문을 통해 card 형식으로 출력함 -->
		<c:forEach var="user_info" items="${data}">
		<div class="card">
			<div class="img">
				<img class="mentor_img" width="200" height="200" src="img/card1.jpg" alt="">
			</div>
			<div class="text">
				<h6>${user_info.department_name} ${user_info.name} ${user_info.position_name}</h6>
				<button type="button" onclick="fn_goMentoringForm()" class="btn btn-success" id="btnAppointed" value="지정선택">선택하기</button>
			</div>
		</div>
		</c:forEach>
	</div>
</div>

<!-- mentoringForm.jsp으로 이동 클릭이벤트 함수 -->
<script>
	function fn_goMentoringForm(event) {
		 
		var url = "${pageContext.request.contextPath}/mentoringForm";
		location.href = url; 
		
	}
	
	var btnRandom = document.getElementById("btnRandom");
	/* var btnAppointed = document.getElementById("btnAppointed"); */
	var btnAppointed = document.querySelectorAll(".text #btnAppointed"); 
	
	btnRandom.addEventListener("click", function() {
		alert("랜덤버튼 눌렀습니다!!!");
	});
	
	// 지정선택 버튼은 반복문이라 js에서 이벤트호출도 반복문 돌려야함. 현재는 첫번째 버튼에만 이벤트 걸림
	/* btnAppointed.addEventListener("click", function() {
		alert("지정선택버튼 눌렀습니다!!!");
	}); */
	
	for(var i=0; i<btnAppointed.length; i++) {
		btnAppointed[i].addEventListener("click", function() {
			alert("지정버튼 눌렀습니다!!!");
		})
	}
	
	
</script>


</body>
</html>

