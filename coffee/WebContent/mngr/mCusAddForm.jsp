<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<link href="/coffee/css/mCusAddForm.css" rel="stylesheet" type="text/css">

		<div class="ch_screen">
			<h1>고객관리　─　추가</h1>
			<hr/>
       
        <div id="logo_img">
            <img src="/coffee/images/coffee.jpg" alt="logo" width="350px" height="200px"/>
		</div>
		
		<div class="outer">
        <div class="inner">
       <table height="200px" align="center">
      <tr>
      <td width="150px" align="center">
         <img width="150px" height="80px" src="/coffee/images/loginlogo.PNG">
      </td>
         
      <td width="300px">
         <label for="id">아이디</label>
         <input id="id" name="id" type="email" size="20"
         maxlength="50" placeholder="ID">
         <br /><br />
         
         <label for="passwd">비밀번호</label>
         <input id="passwd" name="passwd" type="password"
         size="20" placeholder="PASSWORD" maxlength="16">
      </td>
      <td width="150px" margin-right="40px" align="left">
         <button id="login">추가</button>
      </td>
      </tr>
   </table>         
       </div>
   </div>
</div>
