<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, domain.BoardVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	pageContext.setAttribute("CR", "\n");
	pageContext.setAttribute("BR", "<br>");
%>

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
	<c:url var="list" value="/listBoard.do" scope="page">
	</c:url>
	<c:url var="write" value="/writeBoardForm.do" scope="page">
	</c:url>
	<c:url var="modify" value="/modifyBoardForm.do" scope="page">
		<c:param name="no" value="${requestScope.board.no}"></c:param>
	</c:url>
	<a href="${pageScope.modify}">수정</a><br>
	<table>
		<tbody>
			<c:if test="${empty requestScope.board}">
				<tr>
					<td colspan="2">존재하는 게시글이 아닙니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty requestScope.board}">
				<tr>
					<th>제목</th>
					<td>${board.subject}</td>
					<th>작성자</th>
					<td>${board.writer}</td>
				</tr>
				<tr>
					<th>작성일자</th>
					<td>${board.writedate}</td>
					<th>조회수</th>
					<td>${board.hitcount}</td>
				</tr>
				<tr>
					<th colspan="1">내용</th>
					<td colspan="3">${fn:replace(board.content,CR,'<br>')}</td>
				</tr>
			</c:if>
		</tbody>
	</table>
	<a href="${pageScope.list}">전체글보기</a><br>
	<a href="${pageScope.write}">글쓰기</a>
</body>
</html>