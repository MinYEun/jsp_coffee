<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/coffee/css/mngr/mPoint.css" />
<script>
	var redata = prompt("고객 번호를 입력하세요." ,"Customer Number");
</script>

<div class="poi_sel">
	<h1>쿠폰관리　　─　　조회</h1>
	<hr />
	<div id="point">
		<div id="poi_inf">
				고객명 <input type="text" id="cus_name" name="cus_name"
							style="width: 150px; height: 20px"> <br /> 
				적립금 <input type="text" id="m_point" name="point"
							style="width: 150px; height: 20px">
		</div>
	</div>
</div>
