<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./_comment/getCommentCount.jsp"%>
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
							<a href="http://fb.com/"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a> <a
								href="https://twitter.com/"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a> <a
								href="https://www.instagram.com/"
								class="d-flex align-items-center justify-content-center"><span
								class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar sticky-top navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"><font size="7em">
					Osaka </font><span> グルメ</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item active"><a href="deliciousRestaurant.jsp"
						class="nav-link">Delicious</a></li>
					<li class="nav-item"><a href="review.jsp" class="nav-link">Review</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 상단바 영역 -->



	<!-- 이미지 영역 -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/delRes2.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span>
						<span class="mr-2"><a href="deliciousRestaurant.jsp">Delicious <i class="fa fa-chevron-right"></i></a></span>
					</p>
					<h1 class="mb-0 bread">소개 게시판</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 이미지 영역 -->
	
	
	<script>
		// 콤보박스의 아이템을 클릭했을 시 실행될 함수들
		function selectTitle()
			{
				$('#search_mode').val('title');
				$('#btn_select').text('제목');
			}

		function selectStation()
			{
				$('#search_mode').val('station');
				$('#btn_select').text('역');
			}

		function selectLane()
			{
				$('#search_mode').val('lane');
				$("#btn_select").text("노선");
			}
	</script>
	

	<!-- 게시판 표시 영역 -->
	<section class="ftco-section bg-light">
		<div class="row row-cols">
			<div class="col"></div>
			<div class="col-4 input-group mt-3 mb-3">
				<div class="input-group-prepend">
					<button type="button" id="btn_select"
						class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
						<%
						String strSearch = request.getParameter("search");
						String strSearchMode = request.getParameter("search_mode");
						if (strSearch == null)
							strSearch = "";
						if (strSearchMode == null)
							strSearchMode = "";

						switch (strSearchMode) {
							case "lane" :
								out.print("노선");
								break;
							case "station" :
								out.print("역");
								break;
							case "title" :
								out.print("제목");
								break;
							default :
								out.print("검색할 방식을 선택해주세요.");
								break;
						}
						%>
					</button>
					<div class="dropdown-menu">
						<p onclick="selectTitle()" class="dropdown-item">제목</p>
						<p onclick="selectStation()" class="dropdown-item">역</p>
						<p onclick="selectLane()" class="dropdown-item">노선</p>
					</div>
				</div>
				<form method="get" action="./deliciousRestaurant.jsp">
					<div class="input-group-append">
						<input type="hidden" id="search_mode" name="search_mode"
							value="<%=strSearchMode%>"> <input type="text" class="form-control" style="font-size: 1vw;" id="search" name="search"
							<%if (strSearch != "") out.print("value=\"" + strSearch + "\"");%>
							placeholder="Search">
							<input type="submit" class="btn btn-primary" value="Go!">
					</div>
				</form>
			</div>
			<div class="col"></div>
		</div>
		<div class="container">
			<hr>
			<div class="row d-flex">

				<%
				int iArticleCount = 0;							// 페이지 갯수
				SQLHelper sql = new SQLHelper();
				SQLHelper subsql = new SQLHelper();
				final SQLHelper replysql = new SQLHelper();

				String strPage = request.getParameter("page");
				if (strPage == null)
					strPage = Integer.toString(1);

				int iPage = Integer.parseInt(strPage);

				String strSearchSQL = null;	// SQL 검색에 사용될 변수 선언
				final int iShowMax = 6;		// 최대 페이지 갯수
				String StationArray = "";	// 역을 받을 변수 선언
				switch (strSearchMode) {
					case "lane" : {
						sql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE LANE LIKE '%" + strSearch + "%'", null);	// 검색 키워드에 대한 데이터 요청

						if (sql.rs != null && sql.rs.next())								// ResultSet에 값이 있고, ResultSet의 다음항목이 있다면
							StationArray = sql.rs.getString("ID");							// 그 항목의 ID 받기 
						while (sql.rs != null && sql.rs.next())
							StationArray = StationArray + ", " + sql.rs.getString("ID");

						strSearchSQL = "SELECT * FROM ARTICLE WHERE BOARDID=1 AND STATIONID IN (" + StationArray
						+ ") ORDER BY POSTDATE DESC";
						sql.sqlExecute("SELECT",
						"SELECT COUNT(*) AS CNT FROM ARTICLE WHERE BOARDID=1 AND STATIONID IN (" + StationArray + ")", null);
						if (sql.rs != null && sql.rs.next())
							iArticleCount = sql.rs.getInt("CNT");
						System.out.println("SELECT * FROM (SELECT ROWNUM NUM,L.* FROM (" + strSearchSQL + ")L) WHERE NUM BETWEEN "
						+ Integer.toString(((iPage - 1) * iShowMax) + 1) + " AND " + Integer.toString(iPage * iShowMax));
						sql.sqlExecute("SELECT",
						"SELECT * FROM (SELECT ROWNUM NUM,L.* FROM (" + strSearchSQL + ")L) WHERE NUM BETWEEN "
								+ Integer.toString(((iPage - 1) * iShowMax) + 1) + " AND " + Integer.toString(iPage * iShowMax),
						null);
						while (sql.rs != null && sql.rs.next()) {
					try {
						String articleNo = sql.rs.getString(2);
						String title = sql.rs.getString(3);
						String writer = sql.rs.getString(7);
						String postDate = sql.rs.getString(5);
						subsql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE ID='" + sql.rs.getString("STATIONID") + "'",
								null);
				%>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="./readArticle.jsp?articleNo=<%=articleNo%>"
							class="block-20 rounded"
							style="background-image: url('<%=sql.rs.getString("PICTUREURL")%>');">
						</a>
						<div class="text p-4 text-center">
							<h3 class="heading">
								<a href="#"><%=title%></a>
							</h3>
							<div class="meta mb-2">
								<div>
									<a href="#"><%=postDate%></a>
								</div>
								<div>
									<a href="#"><%=writer%></a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										<%=getCommentCount(replysql, articleNo)%></a>
								</div>
							</div>
							<%
								if (subsql.rs != null && subsql.rs.next()) {
							%>
							<p>
								역 :
								<%=subsql.rs.getString("STATION")%></p>
							<p>
								노선 :
								<%=subsql.rs.getString("LANE")%></p>
							<%
								}
							%>
						</div>
					</div>
				</div>
				<%
						} catch (Exception e) {
							System.out.println(e.toString());
						}
					}
				}
				break;
				
				

				case "station" : {
					sql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE STATION LIKE '%" + strSearch + "%'", null);
					if (sql.rs != null && sql.rs.next()) {
					StationArray = sql.rs.getString("ID");
					}
					while (sql.rs != null && sql.rs.next()) {
					StationArray = StationArray + ", " + sql.rs.getString("ID");
					}
					strSearchSQL = "SELECT * FROM ARTICLE WHERE BOARDID=1 AND STATIONID IN (" + StationArray + ") ORDER BY POSTDATE DESC";
					sql.sqlExecute("SELECT", "SELECT COUNT(*) AS CNT FROM ARTICLE WHERE BOARDID=1 AND STATIONID IN (" + StationArray + ")",
							null);
					if (sql.rs != null && sql.rs.next())
					iArticleCount = sql.rs.getInt("CNT");
					System.out.println("SELECT * FROM (SELECT ROWNUM NUM,L.* FROM (" + strSearchSQL + ")L) WHERE NUM BETWEEN "
							+ Integer.toString(((iPage - 1) * iShowMax) + 1) + " AND " + Integer.toString(iPage * iShowMax));
					sql.sqlExecute("SELECT", "SELECT * FROM (SELECT ROWNUM NUM,L.* FROM (" + strSearchSQL + ")L) WHERE NUM BETWEEN "
							+ Integer.toString(((iPage - 1) * iShowMax) + 1) + " AND " + Integer.toString(iPage * iShowMax), null);
					while (sql.rs != null && sql.rs.next()) {
					subsql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE ID='" + sql.rs.getString("STATIONID") + "'", null);
					try {
						String articleNo = sql.rs.getString(2);
						String title = sql.rs.getString(3);
						String writer = sql.rs.getString(7);
						String postDate = sql.rs.getString(5);
						subsql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE ID='" + sql.rs.getString("STATIONID") + "'", null);
				%>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="./readArticle.jsp?articleNo=<%=articleNo%>"
							class="block-20 rounded"
							style="background-image: url('<%=sql.rs.getString("PICTUREURL")%>');">
						</a>
						<div class="text p-4 text-center">
							<h3 class="heading">
								<a href="#"><%=title%></a>
							</h3>
							<div class="meta mb-2">
								<div>
									<a href="#"><%=postDate%></a>
								</div>
								<div>
									<a href="#"><%=writer%></a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										<%=getCommentCount(replysql, articleNo)%></a>
								</div>
							</div>
							<%
								if (subsql.rs != null && subsql.rs.next()) {
							%>
							<p>역 :<%=subsql.rs.getString("STATION")%></p>
							<p>노선 :<%=subsql.rs.getString("LANE")%></p>
							<%
								}
							%>
						</div>
					</div>
				</div>
				<%
						} catch (Exception e) {
							System.out.println(e.toString());
						}
					}
				}
				break;
				
				
				
				case "title" : {
					strSearchSQL = "SELECT * FROM ARTICLE WHERE BOARDID=1 AND TITLE LIKE '%" + strSearch + "%' ORDER BY POSTDATE DESC";
					sql.sqlExecute("SELECT", "SELECT COUNT(*) AS CNT FROM ARTICLE WHERE BOARDID=1 AND TITLE LIKE '%" + strSearch + "%'", null);
					if (sql.rs != null && sql.rs.next())
					iArticleCount = sql.rs.getInt("CNT");
					System.out.println("SELECT * FROM (SELECT ROWNUM NUM,L.* FROM (" + strSearchSQL + ")L) WHERE NUM BETWEEN "
							+ Integer.toString(((iPage - 1) * iShowMax) + 1) + " AND " + Integer.toString(iPage * iShowMax));
					sql.sqlExecute("SELECT", "SELECT * FROM (SELECT ROWNUM NUM,L.* FROM (" + strSearchSQL + ")L) WHERE NUM BETWEEN "
							+ Integer.toString(((iPage - 1) * iShowMax) + 1) + " AND " + Integer.toString(iPage * iShowMax), null);
					while (sql.rs != null && sql.rs.next()) {
					try {
					String articleNo = sql.rs.getString(2);
					String title = sql.rs.getString(3);
					String writer = sql.rs.getString(7);
					String postDate = sql.rs.getString(5);
					subsql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE ID='" + sql.rs.getString("STATIONID") + "'", null);
					%>
					<div class="col-md-4 d-flex ftco-animate">
						<div class="blog-entry align-self-stretch">
							<a href="./readArticle.jsp?articleNo=<%=articleNo%>"
								class="block-20 rounded"
								style="background-image: url('<%=sql.rs.getString("PICTUREURL")%>');">
							</a>
							<div class="text p-4 text-center">
								<h3 class="heading">
									<a href="#"><%=title%></a>
								</h3>
								<div class="meta mb-2">
									<div>
										<a href="#"><%=postDate%></a>
									</div>
									<div>
										<a href="#"><%=writer%></a>
									</div>
									<div>
										<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
											<%=getCommentCount(replysql, articleNo)%></a>
									</div>
								</div>
								<%
									if (subsql.rs != null && subsql.rs.next()) {
								%>
								<p>
									역 :
									<%=subsql.rs.getString("STATION")%></p>
								<p>
									노선 :
									<%=subsql.rs.getString("LANE")%></p>
								<%
									}
								%>
							</div>
						</div>
					</div>
					<%
							} catch (Exception e) {
								System.out.println(e.toString());
							}
						}
					}
					break;
					
					
					
				default : {
				strSearchSQL = "SELECT * FROM ARTICLE WHERE BOARDID=1 ORDER BY POSTDATE DESC";
				sql.sqlExecute("SELECT", "SELECT COUNT(*) AS CNT FROM ARTICLE WHERE BOARDID=1", null);
				if (sql.rs != null && sql.rs.next())
				iArticleCount = sql.rs.getInt("CNT");
				System.out.println("SELECT * FROM (SELECT ROWNUM NUM,L.* FROM (" + strSearchSQL + ")L) WHERE NUM BETWEEN "
						+ Integer.toString(((iPage - 1) * iShowMax) + 1) + " AND " + Integer.toString(iPage * iShowMax));
				sql.sqlExecute("SELECT", "SELECT * FROM (SELECT ROWNUM NUM,L.* FROM (" + strSearchSQL + ")L) WHERE NUM BETWEEN "
						+ Integer.toString(((iPage - 1) * iShowMax) + 1) + " AND " + Integer.toString(iPage * iShowMax), null);
				while (sql.rs != null && sql.rs.next()) {
				try {
					String articleNo = sql.rs.getString(2);
					String title = sql.rs.getString(3);
					String writer = sql.rs.getString(7);
					String postDate = sql.rs.getString(5);
					subsql.sqlExecute("SELECT", "SELECT * FROM STATION WHERE ID='" + sql.rs.getString("STATIONID") + "'", null);
				%>
				<div class="col-md-4 d-flex flex-column ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="./readArticle.jsp?articleNo=<%=articleNo%>"
							class="block-20 rounded"
							style="background-image: url('<%=sql.rs.getString("PICTUREURL")%>');">
						</a>
						<div class="text p-4 text-center">
							<h3 class="heading">
								<a href="#"><%=title%></a>
							</h3>
							<div class="meta mb-2">
								<div>
									<a href="#"><%=postDate%></a>
								</div>
								<div>
									<a href="#"><%=writer%></a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										<%=getCommentCount(replysql, articleNo)%></a>
								</div>
							</div>
							<%
								if (subsql.rs != null && subsql.rs.next()) {
							%>
							<p>
								역 :
								<%=subsql.rs.getString("STATION")%></p>
							<p>
								노선 :
								<%=subsql.rs.getString("LANE")%></p>
							<%
								}
							%>
						</div>
					</div>
				</div>
				<%
						} catch (Exception e) {
							System.out.println(e.toString());
						}
					}
				}
				break;
				}
				replysql.closeSQL();
				subsql.closeSQL();
				sql.closeSQL();
				%>
		
			</div>
			<hr>
			<div class="d-flex justify-content-around mb-2">
			<div class="p-2"></div>
			<div class="p-2">
				<div class="row py-5">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<%
									int iPageCount = (int) Math.ceil((double) iArticleCount / (double) iShowMax);
								for (int k = 0; k < iPageCount; k++) {
									if (iPage == k + 1)
										out.println("<li class=\"active\"><span>" + Integer.toString(k + 1) + "</span></li>");
									else
										out.println("<li><a href=\"javascript:updateParameterAndRefresh('page','" + Integer.toString(k + 1) + "');\">"
										+ Integer.toString(k + 1) + "</a></li>");
								}
								%>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="p-2">
				<br> <input type="submit" id="white" value="글쓰기" onclick="window.location.href='./writeArticle.jsp?board=introduce'" class="btn btn-primary py-3 px-4"><br>
			</div>
		</div>
		</div>
	</section>
	<!-- 게시판 표시 영역 -->

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">
						<a href="#" class="logo">Osaka Gurume</a>
					</h2>
					<p>일본 전역의 맛집들을 직접 돌아다녀 얻은 정보들을 기반으로 소개하는 고품질의 맛집 정보 커뮤니티 Osaka
						グルメ</p>
					<a href="#">Read more <span class="fa fa-chevron-right"
						style="font-size: 11px;"></span></a>
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
						<a href="#" class="tag-cloud-link">Namba</a> <a href="#"
							class="tag-cloud-link">Shinsaibashi</a> <a href="#"
							class="tag-cloud-link">Umeda</a> <a href="#"
							class="tag-cloud-link">Yotsubashi</a> <a href="#"
							class="tag-cloud-link">Daikokucho</a> <a href="#"
							class="tag-cloud-link">Ebischow</a> <a href="#"
							class="tag-cloud-link">Nipponbashi</a> <a href="#"
							class="tag-cloud-link">Dobuttsenmae</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
					<h2 class="footer-heading">Follow us</h2>
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
							<script>
								document.write(new Date().getFullYear());
							</script>
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
	<script>
		//참조 : https://stackoverflow.com/questions/5999118/how-can-i-add-or-update-a-query-string-parameter
		function updateParameterAndRefresh(key, value)
			{
				var currentUrl = location.href;
				var url = new URL(currentUrl);
				url.searchParams.set(key, value); // setting your param
				location.href = url.href;
			}
	</script>


</body>
</html>