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
	<div class="ordercoff">
		<div class="menu_md">
			<h1>주문관리　　─　　추가</h1>
			<hr />
			<div id="menu_class">
				<button id="coffee">COFFEE</button>
				<button id="smoothie">SMOOTHIE</button>
				<button id="ade">ADE</button>
				<button id="side_menu">SIDE MENU</button>
			</div>
			<div class="list_wrap">
<!-- 				<div class="americano"> -->
<!-- 					<img id="ame" src="/coffee/images/아메리카노.png"> <br> <input -->
<!-- 						type="checkbox" id="menu_ch">아메리카노 -->
<!-- 				</div> -->

<!-- 				<div class="cafelatte"> -->
<!-- 					<img id="lat" src="/coffee/images/아이스 모카.png"> <br> <input -->
<!-- 						type="checkbox" id="menu_ch">아이스 모카 -->
<!-- 				</div> -->

<!-- 				<div class="capu"> -->
<!-- 					<img id="lat" src="/coffee/images/아이스 카푸치노.png"> <br> <input -->
<!-- 						type="checkbox" id="menu_ch">아이스 카푸치노 -->
<!-- 				</div> -->

<!-- 				<div class="Caramel"> -->
<!-- 					<img id="lat" src="/coffee/images/카라멜 라떼.png"> <br> <input -->
<!-- 						type="checkbox" id="menu_ch">카라멜 라떼 -->
<!-- 				</div> -->
		
					<c:forEach var="m" items="${menu}">
    					  <div id="customerlist">
      					  <div class="customer">${m.menu_code}</div>
         				  <div class="customer">${m.menu_name}</div>
         				  <div class="customer">${m.cus_mile}</div>
       					  <div class="customer">${m.cus_regdate}</div>
    				  </div>
      </c:forEach>
				
			</div>
			<br>
			<!-------------------------------------------------------------------->
		</div>
		<div class="order_list">
			<div id="list">
			주문 목록<br> <input type="text" width="50px" placeholder="메뉴 명">
<!-- 			<select name="number"> -->
<!-- 				<option>1</option> -->
<!-- 				<option>2</option> -->
<!-- 				<option>3</option> -->
<!-- 				<option>4</option> -->
<!-- 				<option>5</option> -->
<!-- 				<option>6</option> -->
<!-- 				<option>7</option> -->
<!-- 				<option>8</option> -->
<!-- 				<option>9</option> -->
<!-- 				<option>10</option> -->
<!-- 			</select> -->
			</div>
			<div id="price">
				<input type="text" placeholder="총 금액" width="50px">
			</div>
			<div id="etc">
				<button id="btn_j" type="submit">적립</button>
			</div>
		</div>

</c:if>