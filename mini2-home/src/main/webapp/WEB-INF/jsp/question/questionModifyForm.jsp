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
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/question/questionModify.do">
	<input type="hidden" name="boardNo" value="${questionBoard.boardNo}">
	<input type="hidden" name="writer" value="${questionBoard.writer}">
		<table class="table">
			<tbody>
				<tr>
					<th>질문 게시판</th>
				</tr>
				<tr>
					<th>글 번호</th>
					<td>${questionBoard.boardNo}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" value="${questionBoard.title}"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${questionBoard.writer}</td>
				</tr>
				<!-- <tr>
					<th>파일</th>
					<td><input type="file" name="attach"></td>
				</tr> -->
				
				<tr>
					<th>내용</th>
					<td height="300px;"><textarea name="contents">${questionBoard.contents}</textarea></td>
				</tr>
				<tr>
					<td>
						<button>수정완료</button>
						<button onclick="location.href='${pageContext.request.contextPath}/question/questionList'">취소</button>
						
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	
</div>
</body>
</html>