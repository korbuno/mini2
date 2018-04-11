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
	<form method="post">
		<table class="table">
			<tbody>
				<tr>
					<th colspan="2">질문 게시판</th>
				</tr>
				<tr>
					<th>글 번호</th>
					<td>${questionBoard.boardNo}</td>
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
					<th>내용</th>
					<td>${questionBoard.contents}</td>
				</tr>
				<tr>	
					<th colspan="2">
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/question/questionAdviceForm.do?boardNo=${questionBoard.boardNo}'">답글</button>	
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/question/adviceDetail.do?boardNo=${questionBoard.boardNo}'">답글보기</button>	
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/question/questionModifyForm.do?boardNo=${questionBoard.boardNo}'">수정</button>	
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/question/questionDelete.do?boardNo=${questionBoard.boardNo}'">삭제</button>	
					</th>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>