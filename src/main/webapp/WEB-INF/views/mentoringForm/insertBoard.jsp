<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	#formbox {    display: flex;
    				flex-direction: column;
   					 flex-wrap: wrap;
  					  align-content: center; }
</style>
<%-- <script src="${pageContext.request.contextPath}/resources/common/js/jquery-3.3.1.min.js" ></script> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<!-- common CSS -->
<link rel="stylesheet" href="<c:url value='/resources/common/css/common.css'/>" >

<!-- Hantick CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css">
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
<div id="formbox">
	<form name="sub1" action="insertBoard" method="post"  >	
	<table>		
			<tr>
				<td align="center" colspan="2">
				<h1>멘토링 신청하기</h1></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="mentee_id_seq" required="required" /> <br /></td>
			</tr>
			<tr>
				<td>주 제</td>
				<td>
					<input type = "radio" name = "subject" value="업무" />업무
					<input type = "radio" name = "subject" value="자유" checked="checked" />자유<br /></td>
			</tr>
			<tr>
				<td>멘 토</td>
				<td>
				<input type = "text" name="mentor_id_seq" value="랜덤매칭" readonly="readonly" disabled="disabled" /> <br />
				<input type="hidden" name="mentor_id_seq" value="${randomMentor.id_seq }" /></td>
			</tr>
			<tr>
				<td>방 식</td>
				<td>
					<input type = "radio" name = "way" value="대면" />대면
					<input type = "radio" name = "way" value="비대면" checked="checked" />비대면 <br /></td>
			</tr>
			<tr>
				<td>내 용</td>
				<td><textarea id="txt" rows="10" cols="50" name = "content" ></textarea> <br /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type = "button" value="신청완료" onclick="erchk()" >  <!-- 전송버튼 -->
				<input type = "reset" value="다시쓰기" >  <!-- 초기화버튼 --></td>
			</tr>
	</table>
	</form>
	</div>
<!-- 	<script type="text/javascript">
		function erchk(){	
				alert("신청이 완료되었습니다. 마이페이지에서 확인부탁드립니다.")
				document.sub1.submit();
		}
	</script> -->
 	<script type="text/javascript">
		function erchk(){
			if(document.getElementById("txt").value == ""){
				alert("내용을 입력해주세요.")
			}else
				
				document.sub1.submit();
		}
	</script>
</body>
</body>
</html>