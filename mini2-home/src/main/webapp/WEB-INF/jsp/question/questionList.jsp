<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/board/questionWrite.do">
			<table class="table">
				<tr>
					<th>게시글 번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>내용</th>
					<th>작성일</th>
				</tr>
		<%-- 		<c:forEach var="" items=""> --%>
					<tr>
						<td>${questionBoard.boardNo}</td>
						<td>${questionBoard.title}</td>
						<td>${questionBoard.writer}</td>
						<td>${questionBoard.contents}</td>
						<td>${questionBoard.regDate}</td>					
					</tr>
		<%-- 		</c:forEach> --%>
				<tr>
					<th colspan="5"><input type="submit" value="글쓰기"></th>
				</tr>	
			</table>
		</form>
	</div>
</body>
</html>