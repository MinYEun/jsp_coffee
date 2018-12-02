<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<style>
	
	
	.outer{
	  margin: 0 auto;
      width: 1800px;
      height: 900px;
      display: inline-block;
      
	}
	.menu{
		position: absolute;
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
  		float: right;
	}
	.menu_add{
		width: 1500px;
		height: 810px;
		float: right;
		position: relative;
		left: 250px;
		top: 124px;
		
	}
	.menu_add>#menu_image{
		width: 248px;
		height: 319px;
		border: 1px solid red;
		position: relative;
		display: inline-block;
		margin-top: 200px;
		margin-left: 500px;
	
	}
	.menu_add>#file_up{
		position: relative;
		margin-top:10px;
		margin-left: 510px;
	}
	#file_inf{
		position: absolute;
		margin-top: 197px;
		margin-left: 40px;
	}
	#file_add{
		position: relative;
		margin-left: 120px;
		width: 100px;
		height: 30px;
		border-radius: 10px;
		background-color: black;
		color: white;
		border: none;
		text-decoration: none;
	}
	h1 { letter-spacing: 5px;}
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
		<div class="status">
     	 xxx님 안녕하세요
      	<button id="logout"> 로그아웃</button>
   		 </div>
		<div class="menu_add">
			<h1>메뉴관리　　─　　추가</h1>
			<hr/>
			<div id="menu_image">
		
			</div>
			<span id="file_inf">
				<select name="menu_Class">
					<option>COFFEE</option>
					<option>SMOOTHEI</option>
					<option>ADE</option>
					<option>SIDE MENU</option>
				</select>
				<br/>
				<br/>
       		    <input id="menu_name" name="menu_name" type="text" style="width:200px;
        		height:20px;"
        		 	maxlength="15" placeholder="메뉴 이름">
        		<br/>
				<br/>
        		<input id="menu_pr" name="menu_pr" type="text" style="width:200px;
        		height:20px;" maxlength="5" placeholder="메뉴 가격">
        		<br/>
				<br/>
				<input id="menu_ex" name="menu_ex" type="text" style="width:200px; 
						height:150px;" maxlength="50" placeholder="메뉴 설명">
			</span>
			<div id="file_up">
				<input type="file" id="upload"></input>
				<input type="submit" id="file_add" value="메뉴추가" />
			</div>

			
		</div>
	</div>
</body>
</html>