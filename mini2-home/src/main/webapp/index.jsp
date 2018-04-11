<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/main/main.do" >메인</a><br/>
	<a href="${pageContext.request.contextPath}/supportlink/readSupport.do">supportLink</a><br/>
	<a href="${pageContext.request.contextPath}/attendance/attendance.do">Attendance</a><br/>
	<a href="${pageContext.request.contextPath}/membership/membership.do">Membership</a><br/>
	<a href="${pageContext.request.contextPath}/curriculum/curriculum.do">Curriculum</a><br/>
	<a href="${pageContext.request.contextPath}/study/main.do" >study</a><br>
	<a href="${pageContext.request.contextPath}/member/main.do" >member</a><br>
		<a href="${pageContext.request.contextPath}/question/questionWrite.do">질문쓰기</a><br>
	<a href="${pageContext.request.contextPath}/question/questionList.do">질문리스트</a><br>
	<a href="${pageContext.request.contextPath}/question/questionModify.do">질문수정</a><br>
	<a href="${pageContext.request.contextPath}/question/questionDetail.do">질문상세</a><br>
	<a href="${pageContext.request.contextPath}/question/questionAdvice.do">질문답변</a><br>
	<br>
	<a href="${pageContext.request.contextPath}/evaluation/evaluationList.do">수행리스트</a><br>
	<a href="${pageContext.request.contextPath}/evaluation/evaluationWrite.do">수행쓰기</a><br>
	<a href="${pageContext.request.contextPath}/evaluation/evaluationModify.do">수행수정</a><br>
	<a href="${pageContext.request.contextPath}/evaluation/evaluationDetail.do">수행상세</a><br>
	<a href="${pageContext.request.contextPath}/evaluation/evaluationScore.do">수행점수</a><br>
</body>
</html>