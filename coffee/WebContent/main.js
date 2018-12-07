$(document).ready(function() {
	

	$("#logout").click(function() {
		$.ajax({
			type : "POST",
			url : "/coffee/mg/managerLogout.do",
			success : function(data) {
				window.location.href = "/coffee/Login.jsp";
			}
		});
	});
	
	// 메뉴 추가
	$("#menu_add").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuAdd.do";
			}
		});
	});
	
	//메뉴 조회 수정
	$("#menu_md").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuCoff.do";
			}
		});
	});	
	
	//직원 추가
	$("#staff_add").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mStaffAdd.do";
			}
		});
	});

	//직원 조회 삭제
	$("#staff_sd").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mStaffSelDel.do";
			}
		});
	});
	
	//고객 추가
	$("#cus_add").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mCusAddForm.do";
			}
		});
	});
	
	//고객 조회 삭제
	$("#cus_sd").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mCusDel.do";
			}
		});
	});
	
	//주문 추가
	$("#order_add").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mOrderCoffee.do";
			}
		});
	});
	
	//매출 관리
	$("#sal_sel").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mSalesMngr.do";
			}
		});
	});	
	
});