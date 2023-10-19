<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의사항 등록</title>
<link rel="shortcut icon" href="/img/쿼카얼굴.png">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="/css/writeform.css" />

<style>
#menu  {
	margin-top : 40px;	
}
#menu  td {
	padding : 0;
	text-align: center;
	height: 40px;
	line-height: 40px;	
}
#menu a {
	text-decoration: none;
	display: inline-block;
	height: 100%;
	width : 100%;	
}

#menu a:hover {  
	background: yellow;	
}

</style>
<script>
function showAlert() {
    alert("등록되었습니다.");
  }
</script>
</head>
<body>
 <jsp:include page="/WEB-INF/views/include/header.jsp" />
 <main>
 
 <%--   <form action="/Csc/Write?csc_id=${ vo.csc_id }" method="POST"> --%>
  <form action="/Csc/Write" method="POST">
    <%@include file="/WEB-INF/include/cmenu.jsp" %>
  <input type="hidden" name="csc_id" value="${ vo.csc_id }" />
  <input type="hidden" name="csc_idx"     value="${ vo.csc_idx     }" />
  <input type="hidden" name="csc_bnum"    value="${ vo.csc_bnum    }" />
  <input type="hidden" name="csc_lvl"     value="${ vo.csc_lvl     }" />
  <input type="hidden" name="csc_step"    value="${ vo.csc_step    }" />
  <input type="hidden" name="csc_nref"    value="${ vo.csc_nref    }" />
  <table id="table">
   <caption>
     <c:choose>
      <c:when test="${ vo.csc_bnum == 0 }">
  	    <h2>문의내용 작성</h2>
  	  </c:when>
  	  <c:otherwise>  	     
  	    <h2>답글 등록</h2>
  	  </c:otherwise>
  	 </c:choose>   	     
   </caption>
   <tr>
    <th>제목</th>
    <td><input type="text" name="csc_title" value="${ vo.csc_title }"  /></td>
   </tr>
   <tr>
    <th>글쓴이</th>
    <td><input type="text" name="csc_writer" /></td>
   </tr>
   <tr>
    <th>내용</th>
    <td><textarea name="csc_cont">${ vo.csc_cont }</textarea></td>
   </tr>  
   <tr>
    <td colspan="2">
      <input type="submit" value="등록" onclick="showAlert()" />
    </td>
   </tr>
    
  </table>
  </form>
  </main>
  	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>








