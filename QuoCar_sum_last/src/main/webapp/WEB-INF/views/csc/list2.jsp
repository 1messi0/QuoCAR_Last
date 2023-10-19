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
  background-color: #fff; /* 배경 색상을 흰색으로 설정 */
  color: #333; /* 텍스트 색상 */
  padding: 15px 0; /* 패딩 조정 */
  text-align: center; /* 텍스트 가운데 정렬 */
}

.menu-bar a {
  text-decoration: none;
  color: #333;
  font-size: 18px; /* 텍스트 크기 더 크게 조정 */
  padding: 15px 30px; /* 버튼 스타일 패딩 늘리기 */
  transition: background-color 0.3s, color 0.3s; /* 호버 애니메이션 효과 추가 */
  border: none; /* 버튼 테두리 제거 */
  background: transparent; /* 배경 투명하게 설정 */
  margin: 10px; /* 메뉴 항목 간격 */
  display: inline-block;
  position: relative;
  border-radius: 5px;
  overflow: hidden;
}

.menu-bar a::before {
  content: ''; /* 가상 요소 추가 */
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(51, 51, 51, 0); /* 초기에 투명한 선 */
  transition: background-color 0.3s; /* 선의 색상 애니메이션 추가 */
}

.menu-bar a::after {
  content: ''; /* 가상 요소 추가 */
  position: absolute;
  bottom: -5px; /* 선과 버튼 간격 조정 */
  left: 0;
  width: 0;
  height: 2px; /* 버튼 하단 선의 두께 설정 */
  background-color: #333; /* 선의 색상 */
  transition: width 0.3s; /* 선의 너비 애니메이션 추가 */
}


#cmenu {
  margin: 20px 0;
}

#cmenu td {
  border-right: none; /* 나머지 선 제거 */
}

#cmenu td:last-child {
  border-right: none; /* 나머지 선 제거 */
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

/*
#table tr:nth-child(even) {
  background-color: #f0f0f0; /* 진한 회색 배경 색상 
}

#table tr:hover {
  background-color: #ddd; /* 마우스 오버 시 밝은 회색 배경 색상 
}
*/
</style>

<script></script>
</head>
<body>
 <jsp:include page="/WEB-INF/views/include/header.jsp" />
<main>
     
  	<!-- 게시물 목록 -->
	<table id="table">
	<caption>
	  <h2>${ csc_name  }</h2>
	  <br>
	  <br>
	  
	<!--  고객센터 목록 -->
   <%@include file="/WEB-INF/include/cmenu.jsp" %>
	  
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














