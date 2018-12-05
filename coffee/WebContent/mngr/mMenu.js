$(document).ready(function(){
	$("#menu_add").click(function(){ //[상품등록] 버튼 클릭
		window.location.href = "/coffee/mngr/mMenuForm.jsp";
	});
});
	

$(document).ready( function() {
  	  $("#menu_md").on("click", function() {
        $(".ch_screen").load("mMenuCoff.jsp");
    });
  	  $("#cou_add").on("click", function() {
         $(".ch_screen").load("mCouAdd.jsp");
    });
  	  $("#cou_sd").on("click", function() {
  		 $(".ch_screen").load("mCouSel.jsp");
    });
  	  $("#staff_add").on("click", function() {
        $(".ch_screen").load("mStaffAdd.jsp");
    });
  	  $("#staff_sd").on("click", function() {
        $(".ch_screen").load("mStaffSelDel.jsp");
    });
  	  $("#cus_add").on("click", function(){
  		 $(".ch_screen").load("mCusAddForm.jsp")
  	});
  	  $("#cus_sd").on("click", function(){
  		  $(".ch_screen").load("mCusDel.jsp");
  	 });
});

$(document).ready( function() {
	  $("#coffee").on("click", function() {
		  $(".ch_screen").load("mMenuCoff.jsp");
  });
	  $("#smoothie").on("click", function() {
		  $(".ch_screen").load("mMenuSmo.jsp");
  });
	  $("#ade").on("click", function() {
		  $(".ch_screen").load("mMenuAde.jsp");
  });
	  $("#side_menu").on("click", function() {
		  $(".ch_screen").load("mMenuSide.jsp");
  });
});

