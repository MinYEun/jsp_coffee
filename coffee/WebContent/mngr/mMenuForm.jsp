<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<style>
	html, body{width: 99%; height: 99%;}
	
	.outer{
	  margin: 0 auto;
      width: 1000px;
      height: 1000px;
      display: inline-block;
	}
	.menu{
		float: left;

	}
	.menu_mn{
		width: 250px;
		height: 120px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
		border-top: 1px solid brown;
		border-bottom: 1px solid brown;
	}
	.cou_mn{
		width: 250px;
		height: 120px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
	}
	.staff_mn{
		width: 250px;
		height: 120px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
	}
	.cus_mn{
		width: 250px;
		height: 120px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
	}
	.order_mn{
		width: 250px;
		height: 120px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
	}
	.sal_mn{
		width: 250px;
		height: 120px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
	}
	</style>
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
	</div>
</body>
</html>