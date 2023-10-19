<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 메뉴목록 -->
<style>
#cmenu {
    border-radius: 10px;
    margin: 20px 0;
    padding: 15px;
    text-align: center;
}

.menu-bar {
    display: flex;
    justify-content: center;
    padding: 0;
}

.menu-bar a {
    text-decoration: none;
    color: #333; /* 짙은 회색 텍스트 색상 */
    font-size: 18px; /* 큰 텍스트 크기 */
    font-weight: bold; /* 볼드체 텍스트 */
    margin: 0 20px; /* 메뉴 항목 간격 */
    padding: 15px 40px; /* 큰 버튼 스타일 패딩 조정 */
    background-color: #eee; /* 연한 회색 배경 */
    border: none; /* 모든 테두리 제거 */
    border-radius: 20px; /* 둥근 모서리 */
    transition: background-color 0.3s, color 0.3s; /* 배경색과 텍스트 색상 모두 애니메이션 추가 */
    font-family: 'Arial', sans-serif; /* 고급스러운 글꼴 설정 */
}
</style>

<table id="cmenu">
<tr class="menu-bar">
  <c:forEach var="cmenu" items="${cmenuList}">
    <td>
      <a href="/Csc/List2?csc_id=${cmenu.csc_id}">
        ${cmenu.csc_name}
      </a>
    </td>
  </c:forEach>
</tr>
</table>








    