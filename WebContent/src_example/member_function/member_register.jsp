<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "data.JDBC"
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>일본 맛집 커뮤니티 :: 회원가입</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">
			<form action="member_register_upload.jsp" method="post">
				<div class="form-group">
					<label for="id">ID</label>
					<input type="text" class="w-90 form-control float-left" id="id" name="id">
					<input type="button" class="w-10 form-control float-right" value="중복확인">
				</div>
				<div class="form-group">
					<label for="pw">Password</label>
					<input type="password" class="form-control" id="pw" name="pw">
				</div>
				<div class="form-group">
					<label for="nickname">Nickname</label>
					<input type="text" class="form-control" id="nickname" name="nickname">
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<input type="text" class="form-control" id="email" name="email">
				</div>
				<div class="form-group">
					<input type="submit" class="form-control" value="회원가입">
					<input type="button" class="form-control" value="취소" onclick="location.href='../index.jsp'">
				</div>
			</form>
		</div>
	</body>
</html>