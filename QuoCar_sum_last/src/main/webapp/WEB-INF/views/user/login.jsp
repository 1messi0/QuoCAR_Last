<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="/css/login.css"> <!-- 스타일을 위해 'styles.css'를 가져옵니다. -->
<script>
$(function(){
$("#btnLogin").click(function(){
 userid=$("#userid").val();
 var passwd=$("#password").val(); if(userid == ""){
  alert("아이디를 입력하세요");
  $("#userid").focus(); //입력포커스 이동

  return; //함수 종료
}
if(passwd==""){
 alert("비밀번호를 입력하세요"); 
 $("#password").focus();
  return;
}
//폼 내부의 데이터를 전송할 주소
 document.form1.action= "${path}/user/login_check.do";
 document.form1.submit(); //제출
 });
});
</script>
</head>

<body>
    <div class="login-container">
        <h1>로그인</h1>
        <form name="form1" method="POST">
            <div class="input-container">
                <label for="username">아이디:</label>
                <input type="text" id="userid" name="userid" >
            </div>
            <div class="input-container">
                <label for="password">비밀번호:</label>
                <input type="password" id="passwd" name="passwd" required>
            </div>
            <button type="button" id="btnLogin">로그인</button>
        </form>
        <p>계정이 없으신가요? <a href="register">가입하기</a></p>
    </div>
</body>
</html>
