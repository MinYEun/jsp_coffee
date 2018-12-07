$(document).ready(function() {
	// [로그인]버튼을 클릭하면 실행
	$("#login").click(function() {
		var query = {
				id : $("#id").val(),
				pw : $("#passwd").val()
		}
		
		$.ajax({
			type : "post",
			url : "/coffee/index.do",
			data : query,
			success : function(data){
				alert("로그인 성공");
				window.location.href="/coffee/mOrderCoffee.do";
			}
		});
	});
});