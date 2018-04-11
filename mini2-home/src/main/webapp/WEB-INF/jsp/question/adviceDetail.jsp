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
					<th>답글 내용</th>
					<td>${questionBoard.advice}</td>
				</tr> 
				<tr>	
					<th colspan="2">	
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/question/questionList.do'">리스트</button>	
					</th>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>