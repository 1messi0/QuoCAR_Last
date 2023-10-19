<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 메뉴목록 -->




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








    