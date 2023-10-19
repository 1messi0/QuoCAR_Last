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
  #table td:not([colspan]) { text-align: center;  } 
  #table th:nth-of-type(1) { width:100px;  }
  #table th:nth-of-type(2) { width:500px;  }
  #table th:nth-of-type(3) { width:100px;  }
  #table th:nth-of-type(4) { width:120px;  }
  #table th:nth-of-type(5) { width:100px;  }
  
  #table td:nth-of-type(2) { text-align: left;  }
</style>
<script></script>
</head>
<body>
 <jsp:include page="/WEB-INF/views/include/header.jsp" />
<main>
   
   <!--  고객센터 목록 -->
   <%@include file="/WEB-INF/include/cmenu.jsp" %>
   
  	<!-- 게시물 목록 -->
	<table id="table">
	<caption>
	  <h2>${ csc_name  }</h2>
	</caption>
	<tr>
	  <th>번호</th>
	  <th>제목</th>
	  <th>글쓴이</th>
	  <th>날짜</th>
	  <th>조회수</th>
	</tr>
	
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














