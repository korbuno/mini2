<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
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
<form method="post" action="${pageContext.request.contextPath}/evaluation/evaluationWriteForm.do">
	<table class="table">
		<tr>
			<th>게시글 번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="EvaluationBoard" items="${evaluationList}">
			<tr>
				<td>${EvaluationBoard.boardNo}</td>
				<td>${EvaluationBoard.title}</td>
				<td>${EvaluationBoard.writer}</td>
				<td><a href="${pageContext.request.contextPath}/evaluation/evaluationDetail.do?boardNo=${EvaluationBoard.boardNo}">${EvaluationBoard.contents}</a></td>
				<td><fmt:formatDate value="${EvaluationBoard.regDate}" pattern="yyyy-MM-dd" /></td>						
			</tr>
		</c:forEach>
		<tr>
			<th colspan="2"><input type="submit" value="글쓰기"></th>
		</tr>
	</table>	
</form>
</div>
</body>
</html>