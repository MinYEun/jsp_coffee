<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<style>
	html{      background-color: #ebdacf; overflow:hidden;}
	
	.outer{
      width: 1885px;
      height:980px;
      display: inline-block;
      background-color: white;
      margin-top: -9px;

      
	}
	.menu{
		position: fixed;
		float: left;
		

	}
	.menu_mn{
		width: 250px;
		height: 110px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
		border-top: 1px solid brown;
		border-bottom: 1px solid brown;
	}
	.cou_mn{
		width: 250px;
		height: 110px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
		border-bottom: 1px solid brown;
	}
	.staff_mn{
		width: 250px;
		height: 110px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
		border-bottom: 1px solid brown;
	}
	.cus_mn{
		width: 250px;
		height: 110px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
		border-bottom: 1px solid brown;
	}
	.order_mn{
		width: 250px;
		height: 110px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
		border-bottom: 1px solid brown;
	}
	.sal_mn{
		width: 250px;
		height: 135px;
		background-color: #decac5;
		padding-top: 20px;
		margin: 0 auto;
		border-bottom: 1px solid brown;
	}
	.status{
		text-align: right;
  		float: right;
  		width: 1500px;
  		height: 100px;
  		margin-top:10px;
  		margin-right:10px;

	}
	.menu_md{
		width: 1400px;
		height: 810px;
		float: right;
		position: relative;
		overflow: auto;
		margin-right: 100px;
		
	}

	#menu_class{
		width: 1400px;
		position: relative;
		margin-top:10px;
		text-align: center;
	}
	#menu_class > button{
		display: inline;
		background-color: white;
		color: black;
		border: 2px solid black;
		margin-right: 100px;
		width: 200px;
		height: 60px;
		border-radius: 10px;	
		font-weight: bold;
		font-size: 25px;
		margin-bottom: 40px;
	}
	#menu_class > button:hover {
  		background-color: black;
 	    color: white;
 	    border: 2px solid white;
  }
	#menu_class > #side_menu{
		background-color: black;
		color: white;
		border: 2px solid white;
	}
	#menu_image{
		width: 240px;
		height: 310px;
		border: 1px solid black;
		position: relative;
		display: inline-block;
		margin-left: 100px;
		text-align: center;
	
	}
	.menu_img{
		margin-left: 30px;
		text-align: center;
		float: left;
	}
	#menu_img{
		max-width: 100%;
		max-height: 100%
	}
	h1 { letter-spacing: 5px;}
	
	.menu button{
		background-color: #decac5;
		border: 0px solid black;
		font-size: 12px;
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
			<h1>메뉴관리　　─　　수정/삭제</h1>
			<hr/>
			<div id="menu_class">
				<button id="coffee">COFFEE</button>
				<button id="smoothie">SMOOTHIE</button>
				<button id="ade">ADE</button>
				<button id="side_menu">SIDE MENU</button>
			</div>
			<div class="menu_img">
				<img id="menu_img" src="http://placehold.it/240x300" ></img>
				<br>
				<input type="checkbox" id="menu_ch">메뉴 명</input>
				<br>
				<img id="menu_img" src="http://placehold.it/240x300" ></img>
				<br>
				<input type="checkbox" id="menu_ch">메뉴 명</input>
				<br>

			</div>
			
		</div>
	</div>
</body>
</html>