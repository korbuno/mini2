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
<center>
	<form method="post" action="${pageContext.request.contextPath}/evaluation/evaluationList.do">
		<table class="table">
			<tbody>
				<tr>
					<th colspan="2">수행평가 게시판</th>
				</tr>
				<tr>
					<th>제목</th>
					<td>제목 ${evaluationBoard.title}</td>
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
					<td>${evaluationBoard.contents}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${member.id}</td>
				</tr>
				<tr>
					<th height="300px;">내용</th>
					<td><textarea rows="" cols=""></textarea></td>
				</tr>
				<tr>
					<th>점수</th>
						<td>
							<input type="radio" value="20">20
							<input type="radio" value="40">40
							<input type="radio" value="60">60
							<input type="radio" value="80">80
							<input type="radio" value="100">100
						</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="등록">
						<input type="submit" value="취소">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</center>
</div>
</body>
</html>