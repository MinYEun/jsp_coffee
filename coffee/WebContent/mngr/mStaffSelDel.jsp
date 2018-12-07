<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/coffee/css/mngr/mStaffSelDel.css" />

<meta charset="UTF-8">
<div class="stf_sd">
	<h1>직원관리 ─ 조회/삭제</h1>
	<hr />
	<div id="staff">
		<div id="staff_sel">
			<table id="list">
				<tr>
					<th></th>
					<th>직원 코드</th>
					<th>직원 이름</th>
					<th>직원 휴대폰</th>
				</tr>
				<c:forEach var="e" items="${sessionScope.staffList}">
					<tr>
						<td class="elist"><input class="check" type="radio"
							name="check" value="${e.stf_code}"></td>
						<td class="elist">${e.name}</td>
						<td class="elist">${e.passwd}</td>
						<td class="elist">${e.ph_num}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div class="del">
		<button id="delete" name="delete">삭제</button>
	</div>
</div>
