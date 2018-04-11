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
	<form method="post" enctype="multipart/form-data">
		<table class="table">
			<tbody>
				<tr>
					<th colspan="2">수행평가 게시판</th>
				</tr>
				<tr>
					<th>글 번호</th>
					<td>${evaluationBoard.boardNo}</td>
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
					<th>내용</th>
					<td>${evaluationBoard.contents}</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/evaluation/evaluationModifyForm.do?boardNo=${evaluationBoard.boardNo}'">수정</button>	
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/evaluation/evaluationDelete.do?boardNo=${evaluationBoard.boardNo}'">삭제</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>