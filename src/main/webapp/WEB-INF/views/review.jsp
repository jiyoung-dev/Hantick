<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>리뷰내역화면</title>
	
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Font Awesome icons -->
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body id="page-top">
    <!-- Navigation Bar-->
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="index">Hantick</a>
            <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="mentorlist">1:1 멘토링</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="mypage">마이페이지</a></li>
                </ul>
            </div>
        </div>
    </nav>

	<!-- Mentorlist Section -->
	<section class="page-section portfolio" id="mentorlist">
	    <div class="container">
	      
	        <!-- Icon Divider-->
	        <div class="divider-custom">
	            <div class="divider-custom-line"></div>
	            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
	            <div class="divider-custom-line"></div>
	        </div>
	        <!-- Portfolio Grid Items-->
	        <div class="row justify-content-center">
	          
			멘토별 리뷰내역 페이지입니다. 
	            
	        </div>
	    </div>
	</section>
  
    <!-- Footer-->
    <footer class="footer text-center">
        <div class="container">
            <div class="row">
                <!-- Footer Location-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Location</h4>
                    <p class="lead mb-0">
                        2215 John Daniel Drive
                        <br />
                        Clark, MO 65243
                    </p>
                </div>
                <!-- Footer Social Icons-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Around the Web</h4>
                    <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-linkedin-in"></i></a>
                    <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-dribbble"></i></a>
                </div>
                <!-- Footer About Text-->
                <div class="col-lg-4">
                    <h4 class="text-uppercase mb-4">About Freelancer</h4>
                    <p class="lead mb-0">
                        Freelance is a free to use, MIT licensed Bootstrap theme created by
                        <a href="http://startbootstrap.com">Start Bootstrap</a>
                        .
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- Copyright Section-->
    <div class="copyright py-4 text-center text-white">
        <div class="container"><small>Copyright &copy; 2021 Hantick</small></div>
    </div>
  
    <!-- mentoringForm.jsp으로 이동 클릭이벤트 함수 -->
	<script>
	var btnRandom = document.getElementById("btnRandom");
	/* var btnAppointed = document.getElementById("btnAppointed"); */
	var btnAppointed = document.querySelectorAll(".js-form #btnAppointed"); 
	
	btnRandom.addEventListener("click", function() {
		console.log("랜덤버튼 클릭!!!");
	});
	
	for(var i=0; i<btnAppointed.length; i++) {
		btnAppointed[i].addEventListener("submit", function() {
			console.log("지정버튼 클릭!!!");
		})
	}
	
	// 랜덤신청폼 화면으로 넘겨주는 함수 (DB에서 랜덤멘토 조회한 결과값이 보여짐)
	function fn_goRandomForm() {
		var url = "${pageContext.request.contextPath}/mentoringForm";
		location.href = url; 
	}
	
	// 지정멘토 선택시 신청폼 화면으로 넘겨주는 함수 (버튼을 선택할때 card안에 들어있는 멘토 정보가 모두 필요함)
	function fn_goAppointedForm() {
		var url = "${pageContext.request.contextPath}/mentoringForm";
		location.href = url; 
	}
	
	// 멘토 카드리스트 정보 전송을 위해 form태그 및 submit type을 사용하는 과정에서 reload를 막기위한 구문 
	// reload function을 적용하니까, 첫번째 card에만 적용이 된건지 데이터가 안불러와짐. 일단 init() 호출안하는걸로.  
	const form = document.querySelector(".js-form");
	
	function printText(event) {
		event.preventDefault();
		console.log("event!!!");
	}
	
	function init() {
		form.addEventListener("submit", printText, false);
	}
	
/* 	init(); */
	
	
	</script>
  
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>      

</body>
</html>

