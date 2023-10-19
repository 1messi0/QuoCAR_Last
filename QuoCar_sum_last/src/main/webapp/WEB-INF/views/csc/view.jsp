<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의사항 내용조회</title>
<link rel="shortcut icon" href="/img/쿼카얼굴.png">
<link rel="stylesheet" href="/css/common.css" />

<script>

</script>

<style>

/* Reset default list styles */
ul, li {
	list-style: none;
	margin: 0;
	padding: 0;
}

/* 게시판 스타일 */
#table {
	width: 50%;
	border-collapse: collapse;
	margin: 20px auto;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 26px; /* 텍스트 크기 크게 조정 */
	background-color: #fff;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
}

#table td {
	padding: 14px 24px; /* 패딩을 증가시켜 간격 설정 */
	border: 1px solid #ccc;
	background-color: #f7f7f7;
	color: #333;
	font-weight: bold;
	text-align: center;
}

#table tr:nth-child(odd) {
	background-color: #e9e9e9;
}

#table tr:nth-child(even) {
	background-color: #f5f5f5;
}

#table td:last-child {
	border-right: none;
}

/* 구분선 스타일 추가 */
#table td:first-child {
	border-left: none;
	border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
}

#table td:last-child {
	border-right: none;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
}

/* 화면 중앙 정렬 스타일 */
#container {
	display: flex;
	justify-content: center;
}

#table-container {
	width: 100%;
	overflow: auto;
}

/* 게시판 스타일 끝 */

/* 버튼 스타일 /
.btn, .btn-primary, .btn.btn-primary.btn-sm {
display: inline-block;
padding: 20px 40px; / 버튼 패딩 크게 조정 /
background: #007bff;
color: #fff;
text-decoration: none;
border: 2px solid #0056b3;
border-radius: 50px; / 버튼 더 둥글게 /
font-weight: bold;
font-size: 28px; / 버튼 텍스트 크기 크게 조정 */

/* 메뉴 바 스타일 /
.menu-bar {
background-color: #333; / 메뉴 바 배경색 어둡게 /
color: #fff;
font-weight: bold;
font-size: 28px; / 메뉴 바 텍스트 크기 크게 조정 /
text-align: center; / 가운데 정렬 */
.btn:hover, .btn-primary:hover, .btn.btn-primary.btn-sm:hover {
	background: #0056b3;
}

.menu-bar td {
	padding: 20px; /* 셀 패딩 크게 조정 /
border-right: 1px solid #111; / 더 어두운 테두리 */
}

.menu-bar td:last-child {
	border-right: none;
}

.menu-bar a {
	text-decoration: none;
	color: #fff;
	font-size: 26px; /* 메뉴 바 링크 텍스트 크기 크게 조정 */
}

.menu-bar a:hover {
	color: #ff0000; /* 링크 호버 색상 변경 */
}

/* 삭제 버튼 스타일 */
.btn-delete {
    display: inline-block;
    padding: 15px 30px;
    background: linear-gradient(to bottom, #555, #333);
    color: #fff;
    border: 2px solid #222;
    border-radius: 10px;
    font-weight: bold;
    font-size: 20px;
    transition: transform 0.3s, box-shadow 0.3s;
    cursor: pointer;
    text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.5);
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.btn-delete:hover {
    transform: scale(1.05);
    box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
    background: linear-gradient(to bottom, #333, #222);
}

</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<main>
		<div id="main">
			<br>
			<!-- 메뉴 목록 -->
			<%@include file="/WEB-INF/include/cmenu.jsp"%>

			<table id="table">
				<tr>
					<td class="center">글번호:</td>
					<td class="center">${ vo.csc_idx }</td>
				</tr>
				<tr>
					<td class="center">작성자:</td>
					<td class="center">${ vo.csc_writer }</td>
				</tr>
				<tr>
					<td class="center">작성일:</td>
					<td class="center">${ vo.csc_regdate }</td>
				</tr>
				<tr>
					<td class="center">제목:</td>
					<td colspan="3" style="text-align: left">${ vo.csc_title }</td>
				</tr>
				<tr>
					<td class="center">내용:</td>
					<td colspan="3" style="text-align: left">${ vo.csc_cont }</td>
				</tr>
				<tr>
					<td class="center"></td>
					<td colspan="3" style="text-align: center">
						<form action="/deleteServlet" method="post">
							<input type="hidden" name="csc_idx" value="${ vo.csc_idx }">
							<button class="btn-delete" type="submit">삭제</button>
						</form>
					</td>
				</tr>
			</table>
		</div>
	</main>
</body>
</html>


