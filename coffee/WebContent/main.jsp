<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/coffee/css/mngr/mMainForm.css" rel="stylesheet"
	type="text/css">
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script src="/coffee/Start.js"></script>
<script src="/coffee/main.js"></script>
<title>main.jsp</title>
</head>
<body>
	<!-- 관리자, 직원 로그인 Type -->
	<c:if test="${empty sessionScope.id}">
		<div id="header">
			<div id="auth" class="box">
				<!-- 관리자용 로그인 폼 -->
				<c:if test="${type == 1}">
					<jsp:include page="/mngr/logon/mLoginForm.jsp" />
				</c:if>

				<!-- 직원용 로그인 폼 -->
				<c:if test="${type == 2}">
					<jsp:include page="/mngr/logon/eLoginForm.jsp" />
				</c:if>
			</div>
		</div>
	</c:if>

	<!-- 왼쪽 고정 바 -->
	<c:if test="${!empty sessionScope.id }">
		<span class="menu">
			<div class="menulogo">
				<img width="250px" height="120px" alt="logo"
					src="/coffee/images/coffee.jpg" />
			</div>
			<div class="menu_mn">
				<ul>
					<li>메뉴관리</li>
					<ul>
						<li><button type="button" id="menu_add">추가</button>
						<li><button id="menu_md">수정/삭제</button>
					</ul>
				</ul>
			</div>
			<div class="point_mn">
				<ul>
					<li>적립금관리
						<ul>
							<li><button id="point_sel">쿠폰 조회/삭제</button>
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
			<button id="logout" type="button">로그아웃</button>
			<div id="content" class="box2"></div>
		</div>
	</c:if>

	<!-- cont 부분 -->
	<c:if test="${not empty cont}">
		<jsp:include page="${cont}" />
	</c:if>

</body>
</html>