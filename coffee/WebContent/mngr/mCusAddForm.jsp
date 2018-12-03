<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<link href="/coffee/css/mCusAddForm.css" rel="stylesheet" type="text/css">
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
		<div class="menu_add">
			<h1>고객관리　─　추가</h1>
			<hr/>
       
        <div id="logo_img">
            <img src="/coffee/images/coffee.jpg" alt="logo" width="350px" height="200px"/>
		</div>
		
		<div class="outer">
        <div class="inner">
       <table height="200px" align="center">
      <tr>
      <td width="150px" align="center">
         <img width="150px" height="80px" src="/coffee/images/loginlogo.PNG">
      </td>
         
      <td width="300px">
         <label for="id">아이디</label>
         <input id="id" name="id" type="email" size="20"
         maxlength="50" placeholder="ID">
         <br /><br />
         
         <label for="passwd">비밀번호</label>
         <input id="passwd" name="passwd" type="password"
         size="20" placeholder="PASSWORD" maxlength="16">
      </td>
      <td width="150px" margin-right="40px" align="left">
         <button id="login">추가</button>
      </td>
      </tr>
   </table>         
       </div>
   </div>
</div>
</body>
</html>