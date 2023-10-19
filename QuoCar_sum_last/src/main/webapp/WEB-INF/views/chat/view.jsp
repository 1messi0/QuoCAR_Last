<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <%@ page import="com.quocar.chat.vo.CmodelVo" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/img/쿼카얼굴.png">
<link rel="stylesheet" href="/css/common.css" />
<style>
.chat-container {  background-color: #EEF2FA;
  border-radius: 10px;
  padding: 20px;
  padding-top: 50px;
  max-width: 1000px;
  height: 1000px;
  margin: auto;
}

  .chat-header {
      display: flex; /* Flexbox 사용 */
      align-items: center; /* 요소들을 수직 가운데 정렬 */
      justify-content: center; /* 요소들을 수평 가운데 정렬 */
   } 
   h2 {
     color:#333333 ;
     font-size :medium;
     text-align: center;
   }
   .chat-list-container{
     margin-top: 30px;
     
   }

  .answer {
  background-color: #CDCDCD;
  padding: 10px;
  border-radius: 5px;
  font-size :25px;
  height: 100px;
  width: 500px;
}
}
</style>


</head>
<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp" />
	<br><br>
    <main>
     <div class ="chat-container">
        <div class="chat-header">
            <img src="/img/bot.png" width="50" height="50">
        </div>
            <h2>QuoBot</h2>
            
			<br><br><br><br><br><br>

     		<p class="answer">${vo.ans_cont}</p>
			
			

  	</div>
   </main>

    <jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>












