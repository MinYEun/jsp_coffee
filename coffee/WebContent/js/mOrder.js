$(document).ready( function() {
	$("#orcoffee").click(function(){ //[상품등록] 버튼 클릭
		window.location.href = "/coffee/mngr/mMainForm.jsp";
	});
	  $("#orsmoothie").on("click", function() {
		  $(".ch_screen").load("mOrderSmoothie.jsp");
  });
	  $("#orade").on("click", function() {
		  $(".ch_screen").load("mOrderAde.jsp");
  });
	  $("#orside_menu").on("click", function() {
		  $(".ch_screen").load("mOrderSide.jsp");
  });
});