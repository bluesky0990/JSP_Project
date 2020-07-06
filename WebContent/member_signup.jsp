<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Osaka グルメ :: SignUp</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="wrap">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col d-flex align-items-center">
					<p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">+82 10-5597-3042</a> or <span class="mailus">email us:</span> <a href="#">leeyseok6@naver.com</a></p>
				</div>
				<div class="col d-flex justify-content-end">
					<div class="social-media">
						<p class="mb-0 d-flex">
							<a href="#"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a> <a
								href="#"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a> <a
								href="#"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
							<a href="#"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar sticky-top navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html"><font size="7em">
					Osaka </font><span> グルメ</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.html"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">Delicious</a></li>
					<li class="nav-item"><a href="services.html" class="nav-link">Best</a></li>
					<!-- <li class="nav-item"><a href="rooms.html" class="nav-link"></a></li> -->
					<li class="nav-item"><a href="blog.html" class="nav-link">Board</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">Review</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<section class="py-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-4">
					<form action="./login/chkLogin.jsp" method="post" class="appointment-form">
						<h3 class="mb-3 text-center">Sign Up</h3><br>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" id="login_nickname" class="form-control" placeholder="Nickname">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" id="login_id" class="form-control" placeholder="ID">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="password" id="login_pw" class="form-control" placeholder="Password">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="email" id="login_email" class="form-control" placeholder="E-Mail">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="submit" value="Sign Up" class="btn btn-primary py-3 px-4">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">
						<a href="#" class="logo">Osaka Gurume</a>
					</h2>
					<p>일본 전역의 맛집들을 직접 돌아다녀 얻은 정보들을 기반으로 소개하는 고품질의 맛집 정보 커뮤니티 Osaka グルメ</p>
					<a href="#">Read more <span class="fa fa-chevron-right"
						style="font-size: 11px;"></span></a>
				</div>
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">Services</h2>
					<ul class="list-unstyled">
						<li><a href="#" class="py-1 d-block">Map Direction</a></li>
						<li><a href="#" class="py-1 d-block">Accomodation
								Services</a></li>
						<li><a href="#" class="py-1 d-block">Great Experience</a></li>
						<li><a href="#" class="py-1 d-block">Perfect central
								location</a></li>
					</ul>
				</div>
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">Tag cloud</h2>
					<div class="tagcloud">
						<a href="#" class="tag-cloud-link">apartment</a> <a href="#"
							class="tag-cloud-link">home</a> <a href="#"
							class="tag-cloud-link">vacation</a> <a href="#"
							class="tag-cloud-link">rental</a> <a href="#"
							class="tag-cloud-link">rent</a> <a href="#"
							class="tag-cloud-link">house</a> <a href="#"
							class="tag-cloud-link">place</a> <a href="#"
							class="tag-cloud-link">drinks</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">Remake</h2>
					<form action="#" class="subscribe-form">
						<div class="form-group d-flex">
							<input type="text" class="form-control rounded-left" placeholder="Enter email address">
							<button type="submit" class="form-control submit rounded-right">
								<span class="sr-only">Submit</span><i class="fa fa-paper-plane"></i>
							</button>
						</div>
					</form>
					<h2 class="footer-heading mt-5">Follow us</h2>
					<ul class="ftco-footer-social p-0">
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Twitter"><span
								class="fa fa-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Facebook"><span
								class="fa fa-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Instagram"><span
								class="fa fa-instagram"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="w-100 mt-5 border-top py-5">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-8">

						<p class="copyright mb-0">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib.com</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>



</body>
</html>
