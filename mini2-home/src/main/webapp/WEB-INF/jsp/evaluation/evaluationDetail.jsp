<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/evaluation/evaluationList.do">
		<table border="2">
			<tbody>
				<tr>
					<th colspan="2">수행평가 게시판</th>
				</tr>
				<tr>
					<th>제목</th>
					<td>${evaluationBoard.title}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${evaluationBoard.writer}</td>
				</tr>
				<tr>
					<th>파일</th>
					<td>${fileBoard.originalName}</td>
				</tr>
				
				<tr>
					<th>내용</th>
					<td>${evaluationboard.contents}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${member.id}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${evaluationboard.contents}</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정">
						<input type="submit" value="삭제">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>