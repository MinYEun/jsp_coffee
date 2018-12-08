<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="coffee.bean.MngrDBBean, java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script src="/coffee/js/mOrderHS.js"></script>
<link href="/coffee/css/mngr/mMainForm.css" rel="stylesheet"
	type="text/css">
<c:if test="${empty sessionScope.id }">
	<jsp:forward page="/Start.jsp" />
</c:if>
<c:if test="${not empty sessionScope.id }">
	<div class="ordercoff">
		<div class="menu">
			<div class="menu_md">
				<h1>주문관리 ─ 추가</h1>
				<hr />
				<div id="menu_class">
					<button id="coffee">COFFEE</button>
					<button id="smoothie">SMOOTHIE</button>
					<button id="ade">ADE</button>
					<button id="side_menu">SIDE MENU</button>
				</div>
				<div class="list_wrap">				
						<c:if test="${menu != null }">
						<c:forEach var="m" items="${menu}">
						<c:if test="${m.class_code == 001}">
							<div class = "menulist_coff">
							<button id="list_coff">
<%-- 								<div class="menu_code">${m.menu_code}</div> --%>
<%-- 								<div class="class_code">${m.class_code}</div> --%>
								<div class="img">
									<img src="/coffee/images/${m.img}" />
								</div>
								<div class="menu_name">${m.menu_name}</div>
								<div class="price">${m.price}</div>
								</button>
							</div>
						</c:if>
						</c:forEach>
						
						<c:forEach var="m" items="${menu}">
						<c:if test="${m.class_code == 002}">
							<div class = "menulist_smo">
							<button id="list_smo">
<%-- 								<div class="menu_code">${m.menu_code}</div> --%>
<%-- 								<div class="class_code">${m.class_code}</div> --%>
								<div class="img">
									<img src="/coffee/images/${m.img}" />
								</div>
								<div class="menu_name">${m.menu_name}</div>
								<div class="price">${m.price}</div>
							</button>
							</div>
						</c:if>
						</c:forEach>
						
						<c:forEach var="m" items="${menu}">
						<c:if test="${m.class_code == 003}">
							<div class = "menulist_ade">
							<button id="list_ade">
<%-- 								<div class="menu_code">${m.menu_code}</div> --%>
<%-- 								<div class="class_code">${m.class_code}</div> --%>
								<div class="img">
									<img src="/coffee/images/${m.img}" />
								</div>
								<div class="menu_name">${m.menu_name}</div>
								<div class="price">${m.price}</div>
							</button>
							</div>
						</c:if>
						</c:forEach>
						
						<c:forEach var="m" items="${menu}">
						<c:if test="${m.class_code == 004}">
							<div class = "menulist_side">
							<button id="list_side">
<%-- 								<div class="menu_code">${m.menu_code}</div> --%>
<%-- 								<div class="class_code">${m.class_code}</div> --%>
								<div class="img">
									<img src="/coffee/images/${m.img}" />
								</div>
								<div class="menu_name">${m.menu_name}</div>
								<div class="price">${m.price}</div>
							</button>
							</div>
						</c:if>
						</c:forEach>
					</c:if>
					</div>
					<br>
				</div>
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

		</div>
	</div>
</c:if>