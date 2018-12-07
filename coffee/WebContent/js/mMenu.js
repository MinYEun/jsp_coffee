$(document).ready(function() {

	$("#coffee").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuCoff.do";
			}
		});
	});

	$("#smoothie").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuSmo.do";
			}
		});
	});

	$("#ade").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuAde.do";
			}
		});
	});

	$("#side_menu").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuSide.do";
			}
		});
	});
});
