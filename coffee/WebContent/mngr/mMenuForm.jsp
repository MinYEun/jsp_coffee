<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     --%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/coffee/css/mngr/mMenuForm.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/mngr/mMenu.js"></script>

<%-- <c:if test="${empty sessionScope.id }"> --%>
<!-- 	<div id="status"> -->
<!-- 		로그인 안됨 -->
<!-- 	</div> -->
<%-- </c:if> --%>

<%-- <c:if test="${!empty sessionScope.id }"> --%>
<script>
	$(document).ready(function(){
		$("#uplaod").on("change", loadFile);
	});
	function loadFile(event){
		if(event.files && event.files[0]){
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#menu_img').attr('src', e.target.result);
			}
			reader.readAsDataURL(event.files[0]);
		}
	}
</script>

	<div class="outer">
		<span class="menu">
			<div class="menulogo">
				<img width="250px" height="120px" alt="logo" src="/coffee/images/coffee.jpg" />		
			</div>
			<div class="menu_mn">
				<ul>
					<li>메뉴관리
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
						<li><button id="cou_sd">쿠폰 조회</button>
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
		<div class="ch_screen">
			<h1>메뉴관리　　─　　추가</h1>
			<hr/>
			<div id="menu_image">
				<img id="menu_img" src="http://placehold.it/240x300" ></img>
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
				<input type="file" id="upload" multiple accept="image/*" onchange="loadFile(this);" ></input>
				<input type="submit" id="file_add" value="메뉴추가" />
			</div>

			
		</div>
	</div>
<!-- </c:if> -->