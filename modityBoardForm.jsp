<%-- modityBoardFrom.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang='ko'>

<head>
<meta charset='UTF-8'>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>게시글 수정 폼</title>
<style>
body {
	margin: 10px auto;
	width: 500px;
	padding-top: 50px;
	padding-bottom: 30px;
}
</style>
</head>

<body>
	<article>
		<div class="container" role="main">
			<h2>board Form</h2>
			zz:${requestScope.pwError}
			<form action="${pageContext.request.contextPath}/modifyBoard.do"
				method="post">
				<div class="mb-3">
					<label for="title">제목</label> <input type="text"
						class="form-control" name="subject" id="subject"
						value="${sessionScope.board.subject}">
				</div>
				<div class="mb-3">
					<label for="writer">작성자</label> <input type="text"
						class="form-control" name="writer" id="writer"
						value="${sessionScope.board.writer}">
				</div>
				<div class="mb-3">
					<label for="password">비밀번호</label> <input type="password"
						class="form-control" name="password" id="password">
				</div>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content" id="content">${sessionScope.board.content}</textarea>
				</div>
				<div>
					<button type="submit" class="btn btn-sm btn-primary" id="saveBtn">수정</button>
					<button type="button" class="btn btn-sm btn-primary" id="listBtn">목록</button>
				</div>
			</form>
		</div>
		<script>
		const error = ${requestScope.pwError};
		if(error == ""){
			error = false;
		}
		if(error){
			alert("올바르지 않은 비밀번호 입니다.")
		}
		</script>
	</article>

</body>
</html>

