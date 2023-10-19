<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>고객센터</title>
<link rel="shortcut icon" href="/img/쿼카얼굴.png">
<link rel="stylesheet" href="/css/common.css" />

<style>

/* 메뉴 스타일 */
.menu-bar {
  background-color: #f5f5f5; /* Background color */
  color: #333; /* Text color */
  border-bottom: 2px solid #ccc; /* Bottom border */
  padding: 15px 0; /* Adjusted padding */
  text-align: center; /* Center-align the text */
}

.menu-bar a {
  text-decoration: none;
  color: #333;
  font-size: 16px; /* Text size */
  padding: 10px 20px; /* Padding for a button-like look */
  transition: background-color 0.3s;
  border: 1px solid #ccc; /* Border */
  border-radius: 5px; /* Slightly rounded corners */
  margin: 10px; /* Spacing between menu items */
  display: inline-block; /* Display items horizontally */
}

.menu-bar a:hover {
  background-color: #eee; /* Background color on hover */
}

#cmenu {
  margin: 20px 0;
}

#cmenu td {
  border-right: 1px solid #ccc; /* Right border */
}

#cmenu td:last-child {
  border-right: none;
}

/* 기본 스타일  */
/* 고급 스타일  */
#table {
  width: 100%;
  border-collapse: collapse;
  font-family: 'Noto Sans KR', sans-serif;
  margin: 20px 0; /* 상하 여백 추가 */
}

#table th,
#table td {
  padding: 15px;
  border: 1px solid #ccc;
}

#table th:nth-of-type(1) {
  width: 150px; /* 너비 더 크게 조정 */
}

#table th:nth-of-type(2) {
  width: 600px; /* 너비 더 크게 조정 */
  text-align: left;
}

#table th:nth-of-type(3) {
  width: 150px; /* 너비 더 크게 조정 */
}

#table th:nth-of-type(4) {
  width: 150px; /* 너비 더 크게 조정 */
}

#table th:nth-of-type(5) {
  width: 150px; /* 너비 더 크게 조정 */
}

#table td:nth-of-type(2) {
  text-align: left;
  font-weight: bold; /* 두 번째 열의 텍스트를 굵게 표시 */
}

#table th {
  background-color: #333;
  color: white;
  font-size: 20px; /* 텍스트 크기 더 크게 조정 */
  padding: 15px;
}

#table caption h2 {
  font-size: 30px; /* 글자 크기를 더 크게 조정 */
  margin-bottom: 20px;
}

#table tr:nth-child(even) {
  background-color: #f0f0f0; /* 진한 회색 배경 색상 */
}

#table tr:hover {
  background-color: #ddd; /* 마우스 오버 시 밝은 회색 배경 색상 */
}

</style>

<script></script>
</head>
<body>
 <jsp:include page="/WEB-INF/views/include/header.jsp" />
<main>
   
   <!--  고객센터 목록 -->
   <%@include file="/WEB-INF/include/cmenu.jsp" %>
   <br>
  	<!-- 게시물 목록 -->
	<table id="table">
	<caption>
	  <h2>${ csc_name  }</h2>
	  <br>
	  <br>
	</caption>
	<tr>
	  <th>번호</th>
	  <th>제목</th>
	  <th>글쓴이</th>
	  <th>날짜</th>
	  <th>조회수</th>
	</tr>
	<br>
	<tr>
	  <td colspan="5" style="text-align:right">
	    <a href="/Csc/WriteForm?csc_id=${ param.csc_id }&csc_bnum=0">
	    [문의하기]
	    </a>
	  </td>
	</tr>
	
	<c:forEach  var="post"  items="${ postList }">
	<tr>
	  <td>
	     <c:if  test="${ post.csc_lvl == 0  }" >
	     ${ post.csc_idx }
	     </c:if>
	  </td>
	  <td>
	   <b style="display:inline-block;width:${(post.csc_lvl-1)*20}px"></b> 
	  
	   <c:choose>
	    <c:when test="${ post.csc_lvl eq 0  }">
		   <a href="/Csc/View?csc_idx=${ post.csc_idx }&csc_id=${ post.csc_id  }">
		     ${ post.csc_title }
		   </a>
	    </c:when>
	    <c:otherwise>
	       [답글]     
	       <a href="/Board/View?csc_idx=${ post.csc_idx }&csc_id=${ post.csc_id  }">
		     ${ post.csc_title }
		   </a>
	    </c:otherwise>	  
	  </c:choose>
	  </td>
	  <td>${ post.csc_writer }</td>
	  <td>${ post.csc_regdate }</td>
	</tr>
	</c:forEach>
	
	</table>
   
 
   </main>
   <a href="/Chat/List3?model_id=MD01" class="fixed-button">
	<img src="/img/	bot.png" alt="Q 봇" style="width: 70px; height: 70px;"></a>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>














