<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 메뉴목록 -->
<style>
/* 메뉴 스타일 */
#cmenu {
	border-radius: 10px;
	margin: 20px 0;
	padding: 15px;
	text-align: center;
}

.menu-bar {
	padding: 15px 0;
	text-align: center;
}

.menu-bar a {
	text-decoration: none;
	color: #333;
	font-weight: bold; /* 텍스트를 볼드체로 설정 */
	font-size: 25px;
	padding: 15px 30px;
	transition: transform 0.3s;
	display: inline-block;
	border-radius: 5px;
	text-decoration: none;
}

.menu-bar a::before {
	content: '';
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 2px;
	background-color: #333;
	transform: scaleX(0);
	transform-origin: 0% 0%;
	transition: transform 0.3s;
}

.menu-bar a:hover {
	transform: translateY(-5px);
}

.menu-bar a:hover::before {
	transform: scaleX(1);
}
</style>

<table id="cmenu">
	<tr class="menu-bar">
		<c:forEach var="cmenu" items="${cmenuList}">
			<td><a href="/Csc/List2?csc_id=${cmenu.csc_id}">
					${cmenu.csc_name} </a></td>
		</c:forEach>
	</tr>
</table>








