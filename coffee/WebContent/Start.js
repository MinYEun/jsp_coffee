$(document).ready(function() {
	// [로그인]버튼을 클릭하면 자동실행
	$("#login").click(function() {
		var query = {
				id : $("#id").val(),
				pw : $("#passwd").val()
		}
		
		$.ajax({
			type : "post",
			url : "/coffee/Start.do",
			data : query,
			success : function(data){
				alert("로그인 성공");
			}
		});
		
//		window.location.href="/coffee/Start.do";
	});
	
	
	
	
//	$("#elogin").click(function() {
//		window.location.href="/coffee/eindex.do";
//	});
});