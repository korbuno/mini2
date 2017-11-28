<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ include file="/WEB-INF/jsp/include/include.jsp" %>

<title>비트정보처리산업기사 강남점</title>
</head>
<body>
	<div class="tot">
		<!--메뉴 창---------------------------------------------------->
		<div class="leftter">
			<c:import url="/WEB-INF/jsp/include/left.jsp" />
		</div>
		<!-- ----------------------------------------------------- -->
		
		<!-- 검색, 로그인창 ---------------------------------------------------->
		<div class="header">
			<c:import url="/WEB-INF/jsp/include/header.jsp"></c:import>
		</div>
		<!-- ------------------------------------------------------------- -->
		
		<!-- 컨텐츠창 ---------------------------------------------------->
		<div class="contents container-fluid">
			<div class="w3-container">
			  <h2>공지사항</h2>
			  <p>정회원만 열람가능합니다.</p>
			
			  <table class="w3-table w3-bordered w3-hoverable w3-xlarge">
			    <tr class="w3-green">
			      <th>글번호</th>
			      <th>제목</th>
			      <th>글쓴이</th>
			      <th>작성일</th>
			    </tr>
			    <tr>
			      <td>Jill</td>
			      <td>Smith</td>
			      <td>50</td>
			      <td>50</td>
			    </tr>
			    <tr>
			      <td>Eve</td>
			      <td>Jackson</td>
			      <td>94</td>
			      <td>94</td>
			    </tr>
			    <tr>
			      <td>Adam</td>
			      <td>Johnson</td>
			      <td>67</td>
			      <td>67</td>
			    </tr>
			  </table>
			</div>
			<div class="w3-bar">
			  <a href="#" class="w3-button">&laquo;</a>
			  <a href="#" class="w3-button">1</a>
			  <a href="#" class="w3-button">2</a>
			  <a href="#" class="w3-button">3</a>
			  <a href="#" class="w3-button">4</a>
			  <a href="#" class="w3-button">5</a>
			  <a href="#" class="w3-button">&raquo;</a>
			</div>
		</div>
		<!-- ------------------------------------------------------- -->	
		
		<!-- 푸터 ---------------------------------------------------->
		<div class="footer">
			<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		</div>
		<!-- ----------------------------------------------------- -->
		
	</div>
</body>
</html>