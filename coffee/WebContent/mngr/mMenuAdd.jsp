<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/coffee/css/mngr/mMenuAdd.css"/>
<script src="/coffee/js/mMenu.js"></script>
			<div class="ch_screen">
			<h1>메뉴관리　　─　　추가</h1>
			<hr/>
			<div id="menu_image">
				<img id="menu_img" src="http://placehold.it/240x300" ></img>
			</div>
			<span id="file_inf">
				<select name="menu_Class">
					<option>COFFEE</option>
					<option>SMOOTHEI</option>
					<option>ADE</option>
					<option>SIDE MENU</option>
				</select>
				<br/>
				<br/>
       		    <input id="menu_name" name="menu_name" type="text" style="width:200px;
        		height:20px;"
        		 	maxlength="15" placeholder="메뉴 이름">
        		<br/>
				<br/>
        		<input id="menu_pr" name="menu_pr" type="text" style="width:200px;
        		height:20px;" maxlength="5" placeholder="메뉴 가격">
        		<br/>
				<br/>
				<input id="menu_ex" name="menu_ex" type="text" style="width:200px; 
						height:150px;" maxlength="50" placeholder="메뉴 설명">
			</span>
			<div id="file_up">
				<input type="file" id="upload" multiple accept="image/*" onchange="loadFile(this);" ></input>
				<input type="submit" id="file_add" value="메뉴추가" />
			</div>
		</div>
		