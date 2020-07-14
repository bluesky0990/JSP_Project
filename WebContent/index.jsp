<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="./_comment/getCommentCount.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Osaka グルメ :: Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<link rel="stylesheet" href="css/message-Popup.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

</head>
<body>
<div id="popupLoginFail" class="modal fade">
	<div class="modal-dialog msgError-confirm">
		<div class="modal-content">
			<div class="modal-header flex-column">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>						
				<h4 class="modal-title w-100">로그인 실패</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<p>로그인에 실패하였습니다.</p>
				<div id="LoginFailMessage"><p>아이디나 비밀번호를 확인해주세요.</p></div>
			</div>
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">돌아가기</button>
			</div>
		</div>
	</div>
</div>
<div id="popupError" class="modal fade">
	<div class="modal-dialog msgError-confirm">
		<div class="modal-content">
			<div class="modal-header flex-column">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>						
				<h4 class="modal-title w-100">오류</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<div id="ErrorMessage"><p>아이디나 비밀번호를 확인해주세요.</p></div>
				<p>관리자에게 연락바랍니다.</p>
			</div>
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">돌아가기</button>
			</div>
		</div>
	</div>
</div>
<div id="popupLoginSuccess" class="modal fade">
	<div class="modal-dialog msgSuccess-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE876;</i>
				</div>				
				<h4 class="modal-title w-100">로그인 성공</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center">로그인 성공! 환영합니다!</p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success btn-block" data-dismiss="modal">확인</button>
			</div>
		</div>
	</div>
</div>  
	<div class="wrap">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col d-flex align-items-center">
					<p class="mb-0 phone">
						<span class="mailus">Phone no:</span> <a href="#">+82 10-5597-3042</a> or <span class="mailus">email us:</span> <a href="#">leeyseok6@naver.com</a>
					</p>
				</div>
				<div class="col d-flex justify-content-end">
					<div class="social-media">
						<p class="mb-0 d-flex">
							<a href="http://fb.com/" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a> <a href="https://twitter.com/" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a> <a href="https://www.instagram.com/" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar sticky-top navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"><font size="7em"> Osaka </font><span> グルメ</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="deliciousRestaurant.jsp" class="nav-link">Delicious</a></li>
					<li class="nav-item"><a href="review.jsp" class="nav-link">Review</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<div class="hero-wrap js-fullheight" style="background-image: url('images/osaka.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
				<div class="col-md-7 ftco-animate">
					<h2 class="subheading">환영합니다</h2>
					<h1 class="mb-4">오사카 맛집 소개</h1>
					<p>
						<a href="#" class="btn btn-primary">Learn more</a> <a href="#" class="btn btn-white">Contact us</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-book ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row justify-content-end">
				<div class="col-lg-4">
					<form class="appointment-form">
					<%
					if (session.getAttribute("userId") != null)
					{
						%>
							<div class="col-md-12">
								<div class="form-group">
									<p>사용자 아이디 : <% out.print(session.getAttribute("userId").toString()); %></p>
								</div>
							</div> 
							<div class="col-md-12">
								<div class="form-group">
									<input type="submit" id="doLogout" value="로그아웃" class="btn btn-primary py-3 px-4">
								</div>
							</div>
					<%}else{%>
						<h3 class="mb-3">로그인</h3>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" id="userId" class="form-control" placeholder="아이디">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="password" id="userPw" class="form-control" placeholder="패스워드">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="submit" id="doLogin" value="로그인" class="btn btn-primary py-3 px-4">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="button" value="회원가입" onclick="location.href='./signup.jsp'" class="btn btn-primary py-3 px-4">
								</div>
							</div>
						</div>
						<%} %>
					</form>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-services">
		<div class="container">
			<div class="row">
				<div class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
					<div class="d-block services-wrap text-center">
						<div class="img" style="background-image: url(images/nanba.jpg);"></div>
						<div class="media-body py-4 px-3">
							<h3 class="heading">난바</h3>
							<br>
							<p>맛집이 많기로 소문난 곳</p>
							<br>
							<br>
							<p>
								<a href="./deliciousRestaurant.jsp?search_mode=station&search=난바" class="btn btn-primary">바로가기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
					<div class="d-block services-wrap text-center">
						<div class="img" style="background-image: url(images/sinsaibashi.jpg);"></div>
						<div class="media-body py-4 px-3">
							<h3 class="heading">신사이바시</h3>
							<br>
							<p>시장이 넓어 돌아다닐 곳이 많은 곳</p>
							<br>
							<br>
							<p>
								<a href="./deliciousRestaurant.jsp?search_mode=station&search=신사이바시" class="btn btn-primary">바로가기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
					<div class="d-block services-wrap text-center">
						<div class="img" style="background-image: url(images/Umeda.jpg);"></div>
						<div class="media-body py-4 px-3">
							<h3 class="heading">우메다</h3>
							<br>
							<p>재미있는 놀거리나 볼거리가 많은 곳</p>
							<br>
							<br>
							<p>
								<a href="./deliciousRestaurant.jsp?search_mode=station&search=우메다" class="btn btn-primary">바로가기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container-fluid px-md-0">
			<div class="row no-gutters justify-content-center pb-5 mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>메뉴 추천</h2>
				</div>
			</div>
			<div class="row no-gutters">
				<div class="col-lg-6">
					<div class="room-wrap d-md-flex">
						<a href="#" class="img" style="background-image: url(images/chorice.jpg);"></a>
						<div class="half left-arrow d-flex align-items-center">
							<div class="text p-4 p-xl-5 text-center">
								<p class="star mb-0">
									<span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
								</p>
								<!-- <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p> -->
								<h3 class="mb-3">
									<a href="./deliciousRestaurant.jsp?search_mode=title&search=초밥">초 밥</a>
								</h3>
								<ul class="list-accomodation">
									<li><span>많은 사람들이 일본하면 떠오르는 음식!</span></li>
									<li><span>초밥은 어떠신가요?</span></li>
									<br>
									<!-- <li><span>View:</span> Sea View</li>
	    							<li><span>Bed:</span> 1</li> -->
								</ul>
								<p class="pt-1">
									<a href="./deliciousRestaurant.jsp?search_mode=title&search=초밥" class="btn-custom px-3 py-2">맛집 보러가기 <span class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="room-wrap d-md-flex">
						<a href="#" class="img" style="background-image: url(images/ramen.jpeg);"></a>
						<div class="half left-arrow d-flex align-items-center">
							<div class="text p-4 p-xl-5 text-center">
								<p class="star mb-0">
									<span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
								</p>
								<!-- <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p> -->
								<h3 class="mb-3">
									<a href="./deliciousRestaurant.jsp?search_mode=title&search=라멘">라 멘</a>
								</h3>
								<ul class="list-accomodation">
									<li><span>다양한 육수로 맛을 낸 일본 전통 음식!</span></li>
									<li><span>라멘 적극 추천!</span></li>
								</ul>
								<p class="pt-1">
									<a href="./deliciousRestaurant.jsp?search_mode=title&search=라멘" class="btn-custom px-3 py-2">맛집 보러가기 <span class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="room-wrap d-md-flex">
						<a href="#" class="img order-md-last" style="background-image: url(images/kyukatsu.jpg);"></a>
						<div class="half right-arrow d-flex align-items-center">
							<div class="text p-4 p-xl-5 text-center">
								<p class="star mb-0">
									<span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
								</p>
								<!-- <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p> -->
								<h3 class="mb-3">
									<a href="./deliciousRestaurant.jsp?search_mode=title&search=규카츠">규카츠</a>
								</h3>
								<ul class="list-accomodation">
	    							<li><span>겉은 바삭! 속은 촉촉! 규카츠</span></li>
	    							<li><span>화로에 구워드셔보세요!</span></li>
								</ul>
								<p class="pt-1">
									<a href="./deliciousRestaurant.jsp?search_mode=title&search=규카츠" class="btn-custom px-3 py-2">맛집 보러가기 <span class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="room-wrap d-md-flex">
						<a href="#" class="img order-md-last" style="background-image: url(images/okonomiyaki.jpg);"></a>
						<div class="half right-arrow d-flex align-items-center">
							<div class="text p-4 p-xl-5 text-center">
								<p class="star mb-0">
									<span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span>
								</p>
								<!-- <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p> -->
								<h3 class="mb-3">
									<a href="./deliciousRestaurant.jsp?search_mode=title&search=오코노미야키">오코노미야키</a>
								</h3>
								<ul class="list-accomodation">
	    							<li><span>더운 날씨에 시원한 생맥과 어울리는 철판요리</span></li>
	    							<li><span>오코노미야키 맛있을 것 같지 않나요?</span></li>
								</ul>
								<p class="pt-1">
									<a href="./deliciousRestaurant.jsp?search_mode=title&search=오코노미야키" class="btn-custom px-3 py-2">맛집 보러가기 <span class="icon-long-arrow-right"></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- <section class="ftco-section testimony-section bg-light">
		<div class="container">
			<div class="row justify-content-center pb-5 mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>최신 댓글</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel">
						<div class="item">
							<div class="testimony-wrap d-flex">
								<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
								<div class="text pl-4">
									<span class="quote d-flex align-items-center justify-content-center"> <i class="fa fa-quote-left"></i>
									</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p class="name">Racky Henderson</p>
									<span class="position">Father</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap d-flex">
								<div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
								<div class="text pl-4">
									<span class="quote d-flex align-items-center justify-content-center"> <i class="fa fa-quote-left"></i>
									</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p class="name">Henry Dee</p>
									<span class="position">Businesswoman</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap d-flex">
								<div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
								<div class="text pl-4">
									<span class="quote d-flex align-items-center justify-content-center"> <i class="fa fa-quote-left"></i>
									</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p class="name">Mark Huff</p>
									<span class="position">Businesswoman</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap d-flex">
								<div class="user-img" style="background-image: url(images/person_4.jpg)"></div>
								<div class="text pl-4">
									<span class="quote d-flex align-items-center justify-content-center"> <i class="fa fa-quote-left"></i>
									</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p class="name">Rodel Golez</p>
									<span class="position">Businesswoman</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap d-flex">
								<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
								<div class="text pl-4">
									<span class="quote d-flex align-items-center justify-content-center"> <i class="fa fa-quote-left"></i>
									</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p class="name">Ken Bosh</p>
									<span class="position">Businesswoman</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


-->
	<section class="ftco-intro" style="background-image: url(images/neko.png);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-9 text-center">
					<h2>いらっしゃいませ</h2>
					<p class="mb-4">일본 전역의 맛집들을 직접 돌아다녀 얻은 정보들을 기반으로 소개하는 고품질의 맛집 정보 커뮤니티 Osaka グルメ</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center pb-5 mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<h2>베스트 게시글</h2>
					<span class="subheading">Hot &amp; Post</span>
				</div>
			</div>
			<div class="row d-flex">
			<%
			SQLHelper sql = new SQLHelper();
			SQLHelper replysql = new SQLHelper();
			sql.sqlExecute("SELECT", "SELECT * FROM ( SELECT * FROM ARTICLE WHERE BOARDID=1 ORDER BY HITS DESC) WHERE ROWNUM<=3", new String[]{});
			while (sql.rs != null && sql.rs.next())
			{
			%>
				<div class="col-md-4 d-flex flex-column ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="./readArticle.jsp?articleNo=<%=sql.rs.getString("NO")%>" class="block-20 rounded" style="background-image: url('<%= sql.rs.getString("PICTUREURL") %>');"> </a>
						<div class="text p-4 text-center">
							<h3 class="heading">
								<a href="#"><%= sql.rs.getString("TITLE") %></a>
							</h3>
							<div class="meta mb-2">
								<div>
									<a href="#"><%= sql.rs.getString("POSTDATE") %></a>
								</div>
								<div>
									<a href="#"><%= sql.rs.getString("WRITER") %></a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span> <%=getCommentCount(replysql, sql.rs.getString("NO"))%></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
			}
			replysql.closeSQL();
			sql.closeSQL();
				%>
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
					<a href="#">Read more <span class="fa fa-chevron-right" style="font-size: 11px;"></span></a>
				</div>
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">Sitemap</h2>
					<ul class="list-unstyled">
						<li><a href="./index.jsp" class="py-1 d-block">Home</a></li>
						<li><a href="./deliciousRestaurant.jsp" class="py-1 d-block">Delicious</a></li>
						<li><a href="./review.jsp" class="py-1 d-block">Review</a></li>
					</ul>
				</div>
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">Tag Region</h2>
					<div class="tagcloud">
						<a href="#" class="tag-cloud-link">Namba</a> <a href="#" class="tag-cloud-link">Shinsaibashi</a> <a href="#" class="tag-cloud-link">Umeda</a> <a href="#" class="tag-cloud-link">Yotsubashi</a> <a href="#" class="tag-cloud-link">Daikokucho</a> <a href="#" class="tag-cloud-link">Ebischow</a> <a href="#" class="tag-cloud-link">Nipponbashi</a> <a href="#" class="tag-cloud-link">Dobuttsenmae</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">Follow us</h2>
					<ul class="ftco-footer-social p-0">
						<li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span class="fa fa-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span class="fa fa-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span class="fa fa-instagram"></span></a></li>
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
							All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
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
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

<script>
$(document).ready(function(){
		
	  $("#doLogin").click(function(){
		  event.preventDefault();
		  var postData = 'userId=' + $("#userId").val() +
		  '&userPw=' + $("#userPw").val();
		  $.ajax({
			  type: "post",
			  url: "./_member/doLogin.jsp", 
		        data: postData,
		        success: function(result){
		        	if(result.includes("LoginFail") == true)
		        		{
		        			$("#LoginFailMessage p").html(result.split("@")[1]);
		        			$("#popupLoginFail").modal();
		        		}
		        	else
		        		{
		        	    location.href = location.href;//$("#popupLoginSuccess").modal();
		        		}
		    	},
		  		error: function(xhr, status, error)
		  		{
		  			$("#ErrorMessage p").html("알 수 없는 이유로 로그인에 실패하였습니다.");
		  			$("#popupError").modal();
		  		}
		  });
		  
	  });
$("#doLogout").click(function(){
	event.preventDefault();
		  $.ajax({
			  type: "post",
			  url: "./_member/doLogout.jsp", 
		        success: function(result){
		        	location.href = location.href;
		       	},
		  		error: function(xhr, status, error)
		  		{
		  			$("#ErrorMessage p").html("알 수 없는 이유로 로그아웃에 실패하였습니다.");
		  			$("#popupError").modal();
		  		}
		  });
		  
  });
});
</script>

</body>
</html>
