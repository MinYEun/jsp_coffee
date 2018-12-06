<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/coffee/css/mngr/mMainForm.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html lang="ko">
<head>
<title>main.jsp</title>
</head>
<body>
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

	<c:if test="${!empty sessionScope.id }">
		<div class="outer">
			<span class="menu">
				<div class="menulogo">
					<img width="250px" height="120px" alt="logo"
						src="/coffee/images/coffee.jpg" />
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
				<button id="logout">로그아웃</button>
			</div>
		</div>
	</c:if>

	<div id="content" class="box2">
		<c:if test="${not empty cont}">
			<jsp:include page="${cont}" />
		</c:if>
	</div>
</body>
</html>