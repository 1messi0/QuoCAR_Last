<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의사항 등록</title>
<link rel="shortcut icon" href="/img/쿼카얼굴.png">
<link rel="stylesheet" href="/css/common.css">
<style>
/* 전반적인 페이지 스타일 */
body {
	font-family: "Arial", sans-serif;
	background-color: #f7f7f7;
	margin: 0;
	padding: 0;
	color: #333;
}

main {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

h2 {
	font-size: 36px;
	margin: 0;
	color: #333;
	padding-bottom: 10px;
	border-bottom: 2px solid #000;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 15px;
	border-bottom: 1px solid #ccc;
	font-size: 20px;
}

th {
	text-align: left;
	color: #000;
	font-weight: 600;
}

/* 입력 필드 및 버튼 스타일 */
input[type="text"], textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 20px;
	color: #333;
}

input[type="submit"] {
	background-color: #666;
	color: #fff;
	padding: 15px 30px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 18px;
}

input[type="submit"]:hover {
	background-color: #555;
}

/* 게시판 스타일 */
tr:nth-child(even) {
	background-color: #f5f5f5; /* 짝수 행 배경색 설정 */
}

tr:hover {
	background-color: #e5e5e5; /* 마우스 호버 시 밝은 배경색 설정 */
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
	<br>
	<main>
		<form action="/Csc/Write" method="POST">
			<%@include file="/WEB-INF/include/cmenu.jsp"%>
			<input type="hidden" name="csc_id" value="${vo.csc_id}" />
			<!-- 다른 숨겨진 입력 필드 추가 -->
			<table>
				<caption>
					<c:choose>
						<c:when test="${vo.csc_bnum == 0}">
							<h2>문의내용 작성</h2>
						</c:when>
						<c:otherwise>
							<h2>답글 등록</h2>
						</c:otherwise>
					</c:choose>
				</caption>
				<tr>
					<th>제목</th>
					<td><input type="text" name="csc_title"
						value="${vo.csc_title}" /></td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td><input type="text" name="csc_writer" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="csc_cont" rows="5"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록"
						onclick="showAlert()" /></td>
				</tr>
			</table>
		</form>
	</main>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>