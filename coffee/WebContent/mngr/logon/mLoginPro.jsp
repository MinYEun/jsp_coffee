<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${check == 1}">
	<c:set var="id" value="${id}" scope="session"/>
	<c:set var="type" value="${check}" scope="session"/>
</c:if>