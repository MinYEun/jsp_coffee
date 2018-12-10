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

function totalprice(){
	var totalprice = 0;
	for(var i=0; i<$(".aa").length; i++){
		var money = Number($(".aa").eq(i).find(" div:eq(3)").text());
		totalprice = totalprice + money;
		console.log(totalprice);
	}
	$("#total").val(totalprice);
} 

$(document).on("click",".num",function(){
    var num = $(this);
    var n = $(".num").index();
    
    
    var grand = num.parent().parent();   //조상선택
    var originalPrice = Number(grand.find(" div:eq(1)").text());   //제품가격을 선택
    var Price = originalPrice*num.val(); //제품 선택수만큼 가격을 곱함
    Number(grand.find(" div:eq(3)").text(Price));   //총 가격에 가격셋팅
    totalprice();
    
    

 });



	$(document).on("click", ".list_coff", function(){ 
    //상품리스트 눌렀을시 페이리스트 출력
		var tr = $(this).attr("class");
		var n = $(".list_coff").index(this);
		
		var name = $(".list_coff:eq("+n+") div:eq(1)").text();
		var price = $(".list_coff:eq("+n+") div:eq(2)").text();
	$("#list").append('<div class="aa">' 
						+ "<div class='n'>" + name +"</div>"+ '&nbsp' 
			 			+ "<div class='p'>" + price +"</div>" + '&nbsp' 
			 			+ "<div class='q'>" + "<input type='number' class='num' name='quantity' value='1' min='1' max='100'  />" + "</div>" + '&nbsp' 
			 			+ "<div class='t'>"+ price + "</div>"
			 			+ "</div>" + "<br/>");
	totalprice();
	
	});
	
	$(document).on("click", ".list_smo", function(){ 
	    //상품리스트 눌렀을시 페이리스트 출력
			var tr = $(this).attr("class");
			var n = $(".list_smo").index(this);
			
			var name = $(".list_smo:eq("+n+") div:eq(1)").text();
			var price = $(".list_smo:eq("+n+") div:eq(2)").text();
		$("#list").append('<div class="aa">' 
							+ "<div class='n'>" + name +"</div>"+ '&nbsp' 
				 			+ "<div class='p'>" + price +"</div>" + '&nbsp' 
				 			+ "<div class='q'>" + "<input type='number' class='num' name='quantity' value='1' min='1' max='100'  />" + "</div>" + '&nbsp' 
				 			+ "<div class='t'>"+ price + "</div>"
				 			+ "</div>" + "<br/>");
		totalprice();
		
		});
	
	$(document).on("click", ".list_ade", function(){ 
	    //상품리스트 눌렀을시 페이리스트 출력
			var tr = $(this).attr("class");
			var n = $(".list_ade").index(this);
			
			var name = $(".list_ade:eq("+n+") div:eq(1)").text();
			var price = $(".list_ade:eq("+n+") div:eq(2)").text();
		$("#list").append('<div class="aa">' 
							+ "<div class='n'>" + name +"</div>"+ '&nbsp' 
				 			+ "<div class='p'>" + price +"</div>" + '&nbsp' 
				 			+ "<div class='q'>" + "<input type='number' class='num' name='quantity' value='1' min='1' max='100'  />" + "</div>" + '&nbsp' 
				 			+ "<div class='t'>"+ price + "</div>"
				 			+ "</div>" + "<br/>");
		totalprice();
		
		});
	
	$(document).on("click", ".list_side", function(){ 
	    //상품리스트 눌렀을시 페이리스트 출력
			var tr = $(this).attr("class");
			var n = $(".list_side").index(this);
			
			var name = $(".list_side:eq("+n+") div:eq(1)").text();
			var price = $(".list_side:eq("+n+") div:eq(2)").text();
		$("#list").append('<div class="aa">' 
							+ "<div class='n'>" + name +"</div>"+ '&nbsp' 
				 			+ "<div class='p'>" + price +"</div>" + '&nbsp' 
				 			+ "<div class='q'>" + "<input type='number' class='num' name='quantity' value='1' min='1' max='100'  />" + "</div>" + '&nbsp' 
				 			+ "<div class='t'>"+ price + "</div>"
				 			+ "</div>" + "<br/>");
		totalprice();
		
		});
	
	$(document).on("click", "#cus_ph", function(){
		//결제 눌렀을 때
		window.open("/coffee/mngr/mCusPoSel.jsp", "newWindow" ,"width=800, height=700, resizable=yes");

	})





