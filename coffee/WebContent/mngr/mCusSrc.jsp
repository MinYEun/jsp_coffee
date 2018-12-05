<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/mngr/mCusSrc.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="outer">
		<span class="menu">
			<div class="menulogo">
				<img width="250px" height="120px" alt="logo" src="/coffee/images/coffee.jpg" />
			</div>
			<div class="menu_mn">
				<ul>
					<li>메뉴관리</li>
					<ul>
						<li>추가</li>
						<li>수정/삭제</li>
					</ul>
				</ul>
			</div>
			<div class="cou_mn">
				<ul>
					<li>쿠폰관리</li>
					<ul>
						<li>쿠폰 등록</li>
						<li>쿠폰 조회/삭제</li>
					</ul>
				</ul>
			</div>
			<div class="staff_mn">
				<ul>
					<li>직원관리</li>
					<ul>
						<li>추가</li>
						<li>조회/삭제</li>
					</ul>
				</ul>
			</div>
			<div class="cus_mn">
				<ul>
					<li>고객관리</li>
					<ul>
						<li>추가</li>
						<li>조회/삭제</li>
					</ul>
				</ul>
			</div>
			<div class="order_mn">
				<ul>
					<li>주문관리</li>
					<ul>
						<li>추가</li>
					</ul>
				</ul>
			</div>
			<div class="sal_mn">
				<ul>
					<li>매출관리</li>
					<ul>
						<li>조회</li>
					</ul>
				</ul>
			</div>
		</span>
		<div class="status">
			xxx님 안녕하세요
			<button id="logout">로그아웃</button>
		</div>

		<div class="menu_add">
			<h1>고객관리 ─ 조회/삭제</h1>
			<hr />

			<div id="logo_img">
				<img src="/coffee/images/coffee.jpg" alt="logo" width="350px" height="200px" />
			</div>

			<div class="phone">
				<label for="phone">Phone</label> <input id="phone" name="phone"
					type="text" size="20" maxlength="50" placeholder="010-xxxx-xxxx"><br>
				<div class="btn_src">
					<button type="submit">OK</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>