<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<!DOCTYPE>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
   <title>login</title>
   <style>
   html,body {width: 99%; height: 99%; text-align: center; }
   .outer{
   	  margin: 0 auto;
      text-align: center;
      display: inline-block;
      width: 800px;
      height: 1000px;
   }

   .inner{
   	  background-color: #decac5;
      margin: 0 auto;
      border: 1px solid #decac5;
      display: inline-block;  
      text-align: center;
      width: 600px;
   }
   
   #login{
   width: 80px;
   height: 40px;
   background-color: #c9c9c9;
   color: black;
   border: 2px solid black;
   margin: 10px;
   }
  	
  #login:hover {
  background-color: #b38f88;
  color: white;
  }
   </style>
</head>
<body>
<div class="outer">
   <div class="logo">
      <img align="center" height="400px" alt="logoimage" src="/coffee/images/coffee.jpg">
   </div>
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