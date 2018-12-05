<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<<<<<<< HEAD
<link rel="stylesheet" href="/coffee/css/mngr/mMenuSide.css"/>

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
      	<button id="logout"> 로그아웃</button>
   		 </div>
		<div class="menu_md">
=======
<link rel="stylesheet" href="/coffee/css/mMenuSide.css"/>
<script src="/coffee/mngr/mMenu.js"></script>
	
		<div class="menu_side">
>>>>>>> branch 'master' of https://github.com/MinYEun/jsp_coffee.git
			<h1>메뉴관리　　─　　수정/삭제</h1>
			<hr/>
			<div id="menu_class">
				<button id="coffee">COFFEE</button>
				<button id="smoothie">SMOOTHIE</button>
				<button id="ade">ADE</button>
				<button id="side_menu">SIDE MENU</button>
			</div>
			<div class="menu_img">
				<div id="m_img">
					<img id="menu_img" src="http://placehold.it/240x300" ></img>
					<br>
					<input type="checkbox" id="menu_ch">메뉴 명</input>
					<br>
				</div>
				<div id="m_img">
					<img id="menu_img" src="http://placehold.it/240x300" ></img>
					<br>
					<input type="checkbox" id="menu_ch">메뉴 명</input>
					<br>
				</div>

			</div>
			
		</div>
	</div>
