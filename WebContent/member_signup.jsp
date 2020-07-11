<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="./_query/SQLHelper.jsp"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Osaka グルメ :: SignUp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/message-Popup.css">
<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</head>

<body>

	
	<section class="py-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="py-5 col-lg-4">
					<form action="./" method="post" class="appointment-form" onsubmit="">
						<h3 class="mb-3 text-center">Sign Up</h3>
						<br>
						<div class="container" id="alertInfo"></div>
						<div class="py-3 row">
							<div class="py-1 col-md-12">
								<div class="form-group">
									<div class="input-group">
										<input type="text" id="userId" name="userId" class="form-control" placeholder="아이디">
										<input type="submit" id="duplicateCheck" value="확인" class="btn btn-primary">
									</div>
								</div>
							</div>
							<div class="py-1 col-md-12">
								<div class="form-group">
									<input type="password" id="userPw" name="userPw" class="form-control" placeholder="패스워드">
								</div>
							</div>
							<div class="py-1 col-md-12">
								<div class="form-group">
									<input type="text" id="userNick" name="userNick" class="form-control" placeholder="닉네임">
								</div>
							</div>
							<div class="py-1 col-md-12">
								<div class="form-group">
									<input type="email" id="userEmail" name="userEmail" class="form-control" placeholder="이메일 주소">
								</div>
							</div>
							<div class="py-1 col-md-12 d-flex justify-content-center">
								<div class="form-group">
									<input type="submit" id="signUp" value="회원가입" class="btn btn-primary py-3 px-4">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	

	
	
	

</body>
</html>
