<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="./_query/SQLHelper.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Osaka グルメ :: 맛집소개</title>
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
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">

<style type="text/css">\
.title h1, p{display:inline;}
</style>

</head>
<body>

	<!-- 상단바 영역 -->
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
		<%-- 클릭한 게시글에 대한 처리 --%>
		<%
			request.setCharacterEncoding("utf-8");
			SQLHelper sql = new SQLHelper();
			String articleNo = request.getParameter("articleNo");
			int iBoardId = 0;
			sql.sqlExecute("SELECT", "SELECT * FROM ARTICLE WHERE NO='" + articleNo + "'", new String[] {});
			if (sql.rs != null && sql.rs.next())
			{
				int iHit = sql.rs.getInt("HITS");
				
				// 받아온 게시글의 번호로 조회수를 올린다.
				sql.sqlExecute("UPDATE", "UPDATE ARTICLE SET HITS='" + Integer.toString(++iHit) + "' WHERE NO='" + articleNo + "'", new String[] { });
				iBoardId = sql.rs.getInt("BOARDID");
			}
			sql.closeSQL();
		%>
		<%-- 클릭한 게시글에 대한 처리 --%>
	<nav class="navbar sticky-top navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"><font size="7em"> Osaka </font><span> グルメ</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item<% if(iBoardId == 1) out.print(" active"); %>"><a href="deliciousRestaurant.jsp" class="nav-link">Delicious</a></li>
					<li class="nav-item<% if(iBoardId == 0) out.print(" active"); %>"><a href="review.jsp" class="nav-link">Review</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 상단바 영역 -->
	
	
	<!-- 이미지 영역 -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('images/review.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-0 bread"><% if(iBoardId == 0) out.print("리뷰"); else if(iBoardId == 1) out.print("소개"); %> 게시글 보기</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 이미지 영역 -->


	<section>
		<br> <br>
		<div>
			<div class="container">
				<div class="row">
					<%-- 게시글 정보 요청 --%>
					<div class="col-lg-8 col-md-10 mx-auto">
						<%
							request.setCharacterEncoding("utf-8");
							sql = new SQLHelper();
							sql.sqlExecute("SELECT", "SELECT * FROM ARTICLE WHERE NO=" + articleNo, new String[] {});
							if (sql.rs.next())
							{
								int iHit = sql.rs.getInt("HITS");
								%>
						<h1><%=sql.rs.getString("TITLE") %></h1>
						<p style="text-align: right">
							작성자 :
							<%=sql.rs.getString("WRITER") %>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<%=sql.rs.getString("POSTDATE") %></p>
						<hr>
						<%
								out.print(sql.rs.getString("CONTENT"));
							}
							sql.closeSQL();
						%>
					</div>
					<%-- 게시글 정보 요청 --%>
				</div>
			</div>

			<div class="container">
				<div class="d-flex justify-content-center">
					<!--  <form id="commentForm" name="commentForm" method="post">-->
					<br>
					<br>
					<div class="form-group">
					
						<!-- 게시글 영역 -->
						<div class="container">
							<div>
								<from>
									<%
							    	SQLHelper sql2 = new SQLHelper();
  	
  										sql2.sqlExecute("SELECT", "SELECT * FROM REPLY WHERE ARTICLENO='" + articleNo + "' ORDER BY POSTDATE", new String[]{});
  										while(sql2.rs != null && sql2.rs.next()) {
  									%>
									<div class="form-group">
										<span><strong><%= sql2.rs.getString("WRITER") %></strong></span>
										<p><%=sql2.rs.getString("CONTENT") %></p>
									</div>
									<hr>
									<!--<p><%=sql2.rs.getString("POSTDATE") %></p>  날짜 --> <%
										}
   										sql2.closeSQL();
									%>
 								</from>
							</div>
						</div>
						<!-- 게시글 영역 -->




						<!-- 댓글 폼 영역 -->
						<div class="form-group">
							<div>
								<span><strong>Comments</strong></span>
							</div>
							<div>
								<form method="post" action="./_comment/sendComment.jsp">
									<table>
										<tr>
											<td><input type="hidden" id="articleNo" name="articleNo"
												value="<%=articleNo%>"> <textarea
													style="width: 800px; resize: none;" rows="2" cols="15"
													id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
												<br>
												<div>
													<button type="submit" class="btn pull-right btn-success">등록</button>
												</div></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
						<!-- 댓글 폼 영역 -->
					</div>
					<!-- </form>-->
				</div>
			</div>
		</div>
		<br> <br>
	</section>


	<!-- 하단바 영역 -->
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
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- 하단바 영역 -->



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
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
	
	<script>
		// SummerNote API를 #content로 불러오기 및 설정
	    $('#content').summernote({
			height: 600,
			lang : 'ko-KR'
	    });
    </script>

</body>
</html>