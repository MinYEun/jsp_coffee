$(document).ready(function() {
	// [관리자 로그인]버튼을 클릭하면 자동실행
	$("#mlogin").click(function() {
		window.location.href="/coffee/index.do";
	});
	
	// [직원 로그인]버튼을 클릭하면 자동실행
	$("#elogin").click(function() {
		window.location.href="/coffee/eindex.do";
	});
});