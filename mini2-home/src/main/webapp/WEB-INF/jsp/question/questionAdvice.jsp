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
<style>
	textarea {
		width: 99.5%; 
		height:100%;
		resize: none;
	}
</style>
</head>
<body>
<div>
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/board/questionList.do">
		<table class="table">
			<tbody>
				<tr>
					<th colspan="2">질문 게시판</th>
				</tr>
				<tr>
					<th>제목</th>
					<td>제목 ${questionBoard.title}</td>
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
					<td height="300px;"><textarea rows="" cols=""></textarea></td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="submit" value="등록">
						<input type="submit" value="취소">
					</th>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>