$(document).ready(function() {
	// [로그인]버튼을 클릭하면 자동실행
	$("#login").click(function() {
		var query = {
			id : $("#id").val(),
			passwd : $("#passwd").val()
		};

		$.ajax({
			type : "POST",
			url : "/coffee/employeeLoginPro.do",
			data : query,
			success : function(data) {
				window.location.href = "/coffee/employeeMain.do";
			}
		});

	});

	// [로그아웃]버튼을 클릭하면 자동실행
	$("#logout").click(function() {
		$.ajax({
			type : "POST",
			url : "/coffee/mg/managerLogout.do",
			success : function(data) {
				window.location.href = "/coffee/mg/managerMain.do";
			}
		});
	});
});