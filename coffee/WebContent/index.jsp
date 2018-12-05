<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="header">

	<div id="logo" class="box">
		<img class="noborder" id="logo" src="/coffee/images/loginlogo.PNG">
	</div>
	
	<div id="auth" class="box">
	<!-- 관리자용 로그인 폼 -->

		<c:if test="${type == 1}">
			<jsp:include page="/mngr/mLoginForm.jsp" />
		</c:if>
	<!-- 직원용 로그인 폼
		<c:if test="${type == 1}">
			<jsp:include page=".jsp" />
		</c:if>
		 -->
	</div>
</div>

<div id="content" class="box2">
	<jsp:include page="${cont}" />
</div>