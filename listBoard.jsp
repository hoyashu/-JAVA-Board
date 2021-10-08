<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, domain.BoardVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록 조회</title>
<style>
table {
	width: 500px;
	border: 1px solid #444444;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #444444;
}
</style>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty requestScope.boards}">
				<tr>
					<td colspan="5">게시글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty requestScope.boards}">
				<c:forEach var="board" items="${requestScope.boards}"
					varStatus="loop">
					<%-- value를 보면 슬레이시로만 시작하는데, 이는 컨텍스 패스값을 포함하기 때문에 편리하다. --%>
					<c:url var="url" value="/detailBoard.do" scope="page">
						<c:param name="no" value="${board.no}"></c:param>
					</c:url>

					<tr>
						<td>${fn:length(boards) - loop.index}</td>
						<td><a href="${pageScope.url}">${board.subject}</a></td>
						<td>${board.writer}</td>
						<td>${board.writedate}</td>
						<td>${board.hitcount}</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>