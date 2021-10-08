<%-- writeBoardFrom.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang='ko'>

    <head>
        <meta charset='UTF-8'>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <title>게시글 쓰기 폼</title>
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
                <form action="${pageContext.request.contextPath}/writeBoard.do" method="post">
                    <div class="mb-3">
                        <label for="title">제목</label>
                        <input type="text" class="form-control" name="subject" id="title" placeholder="제목을 입력해 주세요">
                    </div>
                    <div class="mb-3">
                        <label for="writer">작성자</label>
                        <input type="text" class="form-control" name="writer" id="writer" placeholder="이름을 입력해 주세요">
                    </div>
                    <div class="mb-3">
                        <label for="password">비밀번호</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="이름을 입력해 주세요">
                    </div>
                    <div class="mb-3">
                        <label for="content">내용</label>
                        <textarea class="form-control" rows="5" name="content" id="content"
                            placeholder="내용을 입력해 주세요"></textarea>
                    </div>    
                    <div>
                    <button type="submit" class="btn btn-sm btn-primary" id="saveBtn">글쓰기</button>
                    <button type="button" class="btn btn-sm btn-primary" id="listBtn">목록</button>
                </div>              
                </form>
                
            </div>
        </article>
    </body>
</html>

