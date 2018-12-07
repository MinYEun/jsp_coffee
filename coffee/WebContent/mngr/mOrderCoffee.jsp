<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />

<link href="/coffee/css/mngr/mMainForm.css" rel="stylesheet"
	type="text/css">
<c:if test="${empty sessionScope.id }">
	<jsp:forward page="/Start.jsp" />
</c:if>
<c:if test="${not empty sessionScope.id }">
	<div class="outer">
		<div class="menu_md">
			<h1>메뉴관리 ─ 수정/삭제</h1>
			<hr />
			<div id="menu_class">
				<button id="coffee">COFFEE</button>
				<button id="smoothie">SMOOTHIE</button>
				<button id="ade">ADE</button>
				<button id="side_menu">SIDE MENU</button>
			</div>
			<div class="list_wrap">
				<div class="americano">
					<img id="ame" src="/coffee/images/아메리카노.png"> <br> <input
						type="checkbox" id="menu_ch">아메리카노
				</div>

				<div class="cafelatte">
					<img id="lat" src="/coffee/images/아이스 모카.png"> <br> <input
						type="checkbox" id="menu_ch">아이스 모카
				</div>

				<div class="capu">
					<img id="lat" src="/coffee/images/아이스 카푸치노.png"> <br> <input
						type="checkbox" id="menu_ch">아이스 카푸치노
				</div>

				<div class="Caramel">
					<img id="lat" src="/coffee/images/카라멜 라떼.png"> <br> <input
						type="checkbox" id="menu_ch">카라멜 라떼
				</div>
			</div>
			<br>
			<!-------------------------------------------------------------------->
			<div class="list_wrap2">
				<div class="coldbru">
					<img id="coldwhite" src="/coffee/images/콜드브루 화이트.png"> <br>
					<input type="checkbox" id="menu_ch">콜드브루 화이트
				</div>

				<div class="coldbru_black">
					<img id="coldblack" src="/coffee/images/콜드브루 블랙.png"> <br>
					<input type="checkbox" id="menu_ch">콜드브루 블랙
				</div>

				<div class="ice_latte">
					<img id="ice_latte" src="/coffee/images/아이스 라떼.png"> <br>
					<input type="checkbox" id="menu_ch">아이스 라떼
				</div>

				<div class="ice_drip">
					<img id="ice_drip" src="/coffee/images/아이스 드립커피.png"> <br>
					<input type="checkbox" id="menu_ch">아이스 드립커피
				</div>
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
</c:if>