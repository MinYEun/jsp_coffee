$(document).ready( function() {
	  $("#coffee").on("click", function() {
		  $(".ch_screen").load("mOrderCoffee.jsp");
  });
	  $("#smoothie").on("click", function() {
		  $(".ch_screen").load("mOrderSmoothie.jsp");
  });
	  $("#ade").on("click", function() {
		  $(".ch_screen").load("mOrderAde.jsp");
  });
	  $("#side_menu").on("click", function() {
		  $(".ch_screen").load("mOrderSide.jsp");
  });
});