<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/Login.js"></script>

<c:if test="${empty sessionScope.id }">
	<div class="tip">
		<img id="logo" width="250px" height="120px" alt="logo"
			src="/coffe
			e/images/loginlogo.PNG" />
	</div>
	<div class="status">
		<h2>Welcome back!!</h2>
		<label> <span>Staff_code</span>
		<input id="id" type="text" /></label>
		<label><span>Password</span>
			<input id="passwd" type="password" />
		</label>
		<button type="button" id="login">Sign In</button>
	</div>
</c:if>