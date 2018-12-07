$(document).ready(function() {
	

	$("#logout").click(function() {
		$.ajax({
			type : "POST",
			url : "/coffee/mg/managerLogout.do",
			success : function(data) {
				window.location.href = "/coffee/Start.do";
			}
		});
	});

	$("#menu_add").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuAdd.do";
			}
		});
	});
	
	$("#menu_Coff").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuCoff.do";
			}
		});
	});
	
	
});