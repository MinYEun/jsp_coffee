<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<!DOCTYPE>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
   <title>login</title>
   <style>
   html,body {width: 100%; height: 100%; text-align: center; }
   .outer{
      vartical-align: middle;
      text-align: center;
      display: inline-block;
      width: 800px;
      height: 1000px;
   }

   .inner{
      margin: 0 px;
      border: 1px solid black;
      display: inline-block;
      text-align: center;
      vartical-align: middle;
      width: 600px;


   }
   </style>
</head>
<body>
<div class="outer">
   <div class="logo">
      <img height="400px" alt="logoimage" src="/coffee/images/coffee.jpg">
   </div>
   <div class="inner">
   <table height="200px" align = "center">
      <tr>
      <td align="center">
         <img width="150px" height="100px" src="/coffee/images/login.PNG">
      </td>
         
      <td>
         <label for="id">아이디</label>
         <input id="id" name="id" type="email" size="20"
         maxlength="50" placeholder="ID">
         <br /><br />
         
         <label for="passwd">비밀번호</label>
         <input id="passwd" name="passwd" type="password"
         size="20" placeholder="PASSWORD" maxlength="16">
      </td>
      <td width="80px" align="center">
         <button id="login">로그인</button>
      </td>
      </tr>
   </table>         
   </div>
   </div>
   
   <br/>
   <div id="status">
      <ul>
         <li>관리자 로그인 성공!! 작업중...
            <button id="logout">로그아웃</button>
      </ul>
   </div>
   </body>
</html>