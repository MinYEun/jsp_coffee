<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/coffee/css/mStaffAdd.css"/>


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
		<div class="staff_add">
			<h1>직원관리　　─　　추가</h1>
			<hr/>
			<div id="staff">
				<div id="logo">
					<img id="logo" width="400px" height="120px" alt="logo" src="/coffee/images/loginlogo.PNG" />
				</div>
				<div id="staff_inf">
					Staff Number<input type="text" id="stf_num" name="stf_num" style="width:200px; height:20px">
				</div>
			</div>
			
		</div>
	</div>
