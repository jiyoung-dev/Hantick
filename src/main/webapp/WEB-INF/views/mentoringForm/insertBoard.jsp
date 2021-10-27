<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
        <a class="nav-link" href="index">����ȭ�� <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="mentorlist">1:1 ���丵</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-md-0">
      <input class="form-control" type="text" placeholder="Search">
    </form>
  </div>
</nav>
<h1>���丵 ��û�ϱ�</h1>
	<form name="sub1" action="insertBoard" method="post"  >
		<table>
			<tr>
				<td>�� ��</td>
				<td><input type="text" name="mentee_id_seq" required="required" /> <br /></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<input type = "radio" name = "subject" value="business" />����
					<input type = "radio" name = "subject" value="free" checked="checked" />���� <br /></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
				<input type = "text" name="mentor_id_seq" /> <br /></td>
			</tr>
			<tr>
				<td>�� ��</td>
				<td>
					<input type = "radio" name = "way" value="business" />���
					<input type = "radio" name = "way" value="free" checked="checked" />���� <br /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea id="txt" rows="10" cols="50" name = "content" ></textarea> <br /></td>
			</tr>
			<tr>
				<td><input type = "button" value="��û�Ϸ�" onclick="erchk()" >  <!-- ���۹�ư --></td>
				<td><input type = "reset" value="�ٽþ���" >  <!-- �ʱ�ȭ��ư --></td>
			</tr>
	</table>
	</form>
<!-- 	<script type="text/javascript">
		function erchk(){	
				alert("��û�� �Ϸ�Ǿ����ϴ�. �������������� Ȯ�κ�Ź�帳�ϴ�.")
				document.sub1.submit();
		}
	</script> -->
 	<script type="text/javascript">
		function erchk(){
			if(document.getElementById("txt").value == ""){
				alert("������ �Է����ּ���.")
			}e
				
				document.sub1.submit();
		}
	</script>
</body>
</body>
</html>