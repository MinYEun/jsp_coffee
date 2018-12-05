<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/mngr/mMenuOrder.css" rel="stylesheet" type="text/css">
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
						<li><button id="menu_add">추가</button>
						<li><button id="menu_md">수정/삭제</button>
					</ul>
				</ul>
			</div>
			<div class="cou_mn">
				<ul>
					<li>쿠폰관리
						<ul>
							<li><button id="cou_add">쿠폰 등록</button>
							<li><button id="cou_sd">쿠폰 조회/삭제</button>
						</ul>
				</ul>
			</div>
			<div class="staff_mn">
				<ul>
					<li>직원관리
						<ul>
							<li><button id="staff_add">추가</button>
							<li><button id="staff_sd">조회/삭제</button>
						</ul>
				</ul>
			</div>
			<div class="cus_mn">
				<ul>
					<li>고객관리
						<ul>
							<li><button id="cus_add">추가</button>
							<li><button id="cus_sd">조회/삭제</button>
						</ul>
				</ul>
			</div>
			<div class="order_mn">
				<ul>
					<li>주문관리
						<ul>
							<li><button id="order_add">추가</button>
						</ul>
				</ul>
			</div>
			<div class="sal_mn">
				<ul>
					<li>매출관리
						<ul>
							<li><button id="sal_sel">조회</button>
						</ul>
				</ul>
			</div>
		</span>
		<div class="status">
			xxx님 안녕하세요
			<button id="logout">로그아웃</button>
		</div>
		<div class="menu_md">
			<h1>주문 관리 ─ 추가</h1>
			<hr />
			<div id="menu_class">
				<button id="coffee">COFFEE</button>
				<button id="smoothie">SMOOTHIE</button>
				<button id="ade">ADE</button>
				<button id="side_menu">SIDE MENU</button>
			</div>
		</div>
		<div class="menu_order">
			주문 목록<br> <input type="text" width="50px" placeholder="메뉴 명">
			<select name="number">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
			</select><br>
			<div class="sum">
				<input type="text" placeholder="총 금액">
			</div>
			<button id="btn_j" type="submit">적립</button>
			<button id="btn_j" type="submit">쿠폰</button>
		</div>
	</div>
</body>
</html>