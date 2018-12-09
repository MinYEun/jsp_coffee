$(document).ready(function(){
	$(".menulist_coff").show();
	$(".menulist_smo").hide();
	$(".menulist_ade").hide();
	$(".menulist_side").hide();
	
	$("#coffee").click(function(){
		$(".menulist_coff").show();
		$(".menulist_smo").hide();
		$(".menulist_ade").hide();
		$(".menulist_side").hide();
	});
	$("#smoothie").click(function(){
		$(".menulist_coff").hide();
		$(".menulist_smo").show();
		$(".menulist_ade").hide();
		$(".menulist_side").hide();
	});
	$("#ade").click(function(){
		$(".menulist_coff").hide();
		$(".menulist_smo").hide();
		$(".menulist_ade").show();
		$(".menulist_side").hide();
	});
	$("#side_menu").click(function(){
		$(".menulist_coff").hide();
		$(".menulist_smo").hide();
		$(".menulist_ade").hide();
		$(".menulist_side").show();
	});
});



/*$(document).ready(function(){
	$(".list_coff").click(function(){*/
	$(document).on("click", ".list_coff", function(){ 
    //상품리스트 눌렀을시 페이리스트 출력
		var tr = $(this).attr("class");
		var n = $(".list_coff").index(this);
		
		var name = $(".list_coff:eq("+n+") div:eq(1)").text();
		var price = $(".list_coff:eq("+n+") div:eq(2)").text();
		console.log(name);
	$("#list").append(name + '&nbsp' + price + "<input type='number' name='quantity' value='1' min='1' max='100'  />" +'&nbsp'+ "<br>");
	});
