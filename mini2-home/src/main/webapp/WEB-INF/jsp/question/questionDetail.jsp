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
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/board/questionModify.do">
		<table class="table">
			<tbody>
				<tr>
					<th colspan="2">질문 게시판</th>
				</tr>
				<tr>
					<th>제목</th>
					<td>${questionBoard.title}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${questionBoard.writer}</td>
				</tr>
				<tr>
					<th>파일</th>
					<td>${fileBoard.originalName}</td>
				</tr>
				
				<tr>
					<th>내용</th>
					<td>${questionBoard.contents}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${member.id}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${questionBoard.contents}</td>
				</tr>
				<tr>	
					<th colspan="2">	
						<c:choose>
							<c:when test="${empty user}">
								<input type="submit" value="답변">	
							</c:when>
							<c:otherwise>
								<input type="submit" value="수정">
								<input type="submit" value="삭제">
							</c:otherwise>
						</c:choose>
					</th>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>