<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/coffee/css/mStaffSelDel.css"/>
<script>
	var redata = prompt("직원 번호를 입력하세요." ,"Staff Number");
	
</script>
<meta charset="UTF-8">
<div class="stf_sd">
	<h1>직원관리　　─　　조회/삭제</h1>
	<hr/>
	<div id="staff">
		<div id="staff_sel">
			<div id="box">
				<input type="checkbox" id="list_sel" name="list_sel" />
			</div>
			<div id="staff_list">
				Staff Number<input type="text" id="stf_num" name="stf_num" style="width:150px; height:20px">
				Name <input type="text" id="stf_name" name="stf_name" style="width:150px; height:20px">
				<br />
				Phone <input type="text" id="stf_ph" name="stf_ph" style="width:150px; height:20px">
				PassWord <input type="text" id="stf_pw" name="stf_pw" style="width:150px; height:20px">
			</div>
		</div>
	</div>
	<div class="del">
		<button id="delete" name="delete">삭제</button>
	</div>
</div>
