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
	<form method="post" action="${pageContext.request.contextPath}/question/questionAdvice.do">
	<input type="hidden" name="boardNo" value="${questionAdvice.boardNo}">
		<table class="table">
			<tbody>
				<tr>
					<th colspan="2">질문 게시판</th>
				</tr>
				<tr>
					<th>글 번호</th>
					<td>${questionAdvice.boardNo}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${questionAdvice.title}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${questionAdvice.writer}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${questionAdvice.contents}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${member.id}</td>
				</tr>
				<tr>
					<th>답글 내용</th>
					<td height="300px;"><textarea name="advice"></textarea></td>
				</tr>
				<tr>
					<th colspan="2">
						<button>답글 등록</button>
						<button onclick="location.href='${pageContext.request.contextPath}/question/questionList.do'">취소</button>
					</th>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>