<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="navi" tagdir="/WEB-INF/tags" %>

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
			  <h2 align="center">공지사항</h2>
			  <p>정회원만 열람가능합니다.</p>
			
			  <table class="w3-table w3-bordered w3-hoverable w3-xlarge">
			    <tr class="w3-green">
			      <th>글번호</th>
			      <th>제목</th>
			      <th>글쓴이</th>
			      <th>작성일</th>
			    </tr>
			    
			    <c:forEach items="${list}" var="board" varStatus="loop">
			    <tr onclick="document.getElementById('${board.boardNo}').style.display='block'" style="cursor: pointer;">
			      <td>${board.boardNo}</td>
			      <td>${board.title}</td>
			      <td>${board.writer}</td>
			      <fmt:formatDate var="date" value="${board.regDate}"
								  pattern="yy/MM/dd" />
 				  <td>${date}</td>
			    </tr>
			    
			    <!-- 모달부분 ----------------------- -->
			    <!-- 모달부분 ----------------------- -->
			    <!-- 모달부분 ----------------------- -->
			    
					<div id="${board.boardNo}" class="w3-modal">
					 <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="overflow:scroll; max-height: 600px;">
					  <header class="w3-container w3-blue"> 
					   <span onclick="document.getElementById('${board.boardNo}').style.display='none'" 
					   class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
					   <h2>${board.title}</h2>
					  </header>

					  <div class="w3-bar w3-border-bottom" style="font-size: 20px;">
					  	<div class="w3-bar-item">
					  		작성자 ${board.writer}
					  	</div>
					  	<div class="w3-bar-item">
					  		날짜 ${date}
					  	</div>
					  	
					  </div>
					
					  <div class="w3-container" style="padding: 10px; min-height: 150px; font-size: 15px;">
					   <p>${board.contents}</p>
					   <div class="w3-bar-item w3-display-right">
					  		<button class="BoardDelete" value="${board.boardNo}">삭제</button>
					  		<button class="BoardUpdate" value="${board.boardNo}">수정</button>
					   </div>
					  </div>
					  
					  
					  <div class="w3-container w3-light-grey w3-padding w3-border-bottom">
					   <input class="w3-input w3-border w3-round w3-hover comment" type="text">
					   <button class="w3-btn w3-blue w3-right w3-round-large commentBtn" value="${board.boardNo}">댓글 작성</button>
					  </div>

					  <div class="w3-container">
					  <c:forEach items="${board.commentList}" var="comment" varStatus="loop">
							<fmt:formatDate var="commentRegdate" value="${comment.commentRegdate}"
								  pattern="yy/MM/dd" />
   					  	    <header class="w3-container w3-blue">
						      <h5>${comment.commentWriter}      ${commentRegdate}</h5>
						    </header>
						      <p class="w3-bar">${comment.commentContents}</p>
					  </c:forEach>
     				  </div>
 
					
					  <div class="w3-container w3-light-grey w3-padding">
					   <button class="w3-button w3-right w3-white w3-border" 
					   onclick="document.getElementById('${board.boardNo}').style.display='none'">Close</button>
					  </div>

					 </div>
					</div>
			    </c:forEach>
			  </table>
			</div>
			<div class="w3-bar">
				<navi:noticePage data="${pageResult}" />
			</div>
		</div>
		<!-- ------------------------------------------------------- -->	
		
		<!-- 푸터 ---------------------------------------------------->
		<div class="footer">
			<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		</div>
		<!-- ----------------------------------------------------- -->
	</div>
	
	<script>
	var path = '${pageContext.request.contextPath}';
	
		$(".BoardDelete").click(function() {
			if(confirm("정말 삭제하시겠습니까?")){
				$.ajax({
					url: path + "/notice/delete.do",
					data: "boardNo="+$(this).val(),
					success: function() {
						location.href = path + "/notice/list.do?pageNo=1";
					}
				});
			}
		});
		
		$(".BoardUpdate").click(function() {
			var target = $(this).closest(".w3-container");
			var val = target.children("p").text();
			$(this).closest(".w3-display-right").html("<button class='BoardUpdating' value='"+$(this).val()+"'>수정완료</button>");
			target.children("p").html(
					"<input style='height: 200px;' class='w3-input update' type='text' value='"+val+"'></input>"
			);
			$(".BoardUpdating").click(function() {
				$.ajax({
					url: path + "/notice/update.json",
					data: "boardNo=" + $(this).val() +
						  "&contents=" + $(".update").val(),
					success: function() {
						location.href = path + "/notice/list.do?pageNo=1";
					}
				});
			});
			
		});
		
		
		$(".commentBtn").click(function() {
			$.ajax({
				url: path + "/notice/commentInsert.json",
				data: "boardNo=" + $(this).val() +
					  "&commentWriter=관리자" +
					  "&commentContents=" + $(this).siblings("input").val(),
			    success: function() {
			    	location.href = path + "/notice/list.do?pageNo=1";
			    }
			});
		});
	</script>
	
</body>
</html>