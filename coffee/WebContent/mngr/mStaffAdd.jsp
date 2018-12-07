<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/coffee/css/mngr/mStaffAdd.css"/>
<script>

$(document).ready(function(){
	
	$("#add").click(function(){
		alert("되는거맞지;?");
		
		var query= {
				
				id : $("#stf_num").val(),
				name : $("#stf_name").val(),
				tel : $("#stf_ph").val(),
				pw : $("#stf_pw").val()

		}
		
		
		$.ajax({
		
			type : "post",
			url : "/coffee/mStaffAdd.do",
			data : query,
			success : function(data) {
				
				alert("ok");
				
			}
		});
		
	});
	
});
</script>


		<div class="staff_add">
			<h1>직원관리　　─　　추가</h1>
			<hr/>
			<div id="staff">
				<div id="logo">
					<img id="logo" width="400px" height="120px" alt="logo" src="/coffee/images/loginlogo.PNG" />
				</div>
				<div id="staff_inf">
					Staff Number <input type="text" id="stf_num" name="stf_num" style="width:200px; height:20px">
					Name <input type="text" id="stf_name" name="stf_name" style="width:200px; height:20px">
					<br />
					Phone <input type="text" id="stf_ph" name="stf_ph" style="width:200px; height:20px">
					PassWord <input type="text" id="stf_pw" name="stf_pw" style="width:200px; height:20px">
				</div>
				<input type="button" class="send" id="add" value="add" />
			</div>
			
		</div>
	
