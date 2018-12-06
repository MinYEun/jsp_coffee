<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>main.jsp</title>
</head>
<body>
	<div id="header">
		<div id="auth" class="box">
			<!-- 관리자용 로그인 폼 -->
			<c:if test="${type == 1}">
				<jsp:include page="/mngr/logon/mLoginForm.jsp" />
			</c:if>
		</div>
	</div>

 	<div id="content" class="box2">
		<c:if test="${not empty cont}">
			<jsp:include page="${cont}" />
		</c:if>
	</div>
</body>
</html>