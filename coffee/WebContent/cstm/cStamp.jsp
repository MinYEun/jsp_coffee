<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/cstm/cStamp.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="outer">

		<span class="menu">
			<div class="menulogo">
				<img width="250px" height="120px" alt="logo" src="/coffee/images/coffee.jpg" />
			</div>
			<div class="menu_mn">
				<ul>
					<li><button id="menu_add">스탬프 조회</button>
				</ul>
			</div>
			<div class="cou_mn">
				<ul>
					<li><button id="cou_add">쿠폰 조회</button>
				</ul>
			</div>
		</span>
		<div class="status">
			xxx님 안녕하세요
			<button id="logout">로그아웃</button>
		</div>
		<div class="menu_md">
			<h1>스탬프 확인</h1>
			<hr />

			<div class="stamp_ck">
				<h1 id="h1">스탬프가 x개 적립 되었습니다.</h1>
				<br> ※10개 적립시 쿠폰 교환 가능하며, 1일 1회 사용 가능.※
			</div>

			<div class="exchange">
				<button id="btn_cg" type="submit">교환하기</button>
				<br>//10개 채울시 나타남
			</div>
		</div>
	</div>
</body>
</html>