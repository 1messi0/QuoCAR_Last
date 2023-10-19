<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 메뉴목록 -->
<style>
#cmenu {
    width: 100%;
    background-color: #f7f7f7; /* 연한 회색 배경 */
    border-radius: 10px;
    margin: 20px 0;
    padding: 15px;
    text-align: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 은은한 그림자 */
}

.menu-bar {
    display: flex;
    justify-content: center;
    list-style: none; /* 불릿 포인트 제거 */
    padding: 0;
}

.menu-bar a {
    text-decoration: none;
    color: #333; /* 짙은 회색 텍스트 색상 */
    font-size: 16px;
    margin: 0 20px; /* 메뉴 항목 간격 */
    padding: 10px 20px;
    border: 1px solid #ccc; /* 연한 회색 테두리 */
    border-radius: 5px;
    transition: background-color 0.3s;
    font-family: 'Arial', sans-serif; /* 고급스러운 글꼴 설정 */
}

.menu-bar a:hover {
    background-color: #ddd; /* 호버 시 연한 회색 배경 */
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








    