<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="/jsp/include/include.jsp" %>

<div class="container">
  <a class="menuBtn" id="btnHidden" href="javascript:viewMenu();">
  	<img alt="메뉴 더보기" width="100px">
  </a>
  <div class="list-group" id="menuHidden">
    <a href="#" class="list-group-item"><i class="fa fa-bell fa-fw" aria-hidden="true"></i>오늘의 내기</a>
    <a href="#" class="list-group-item"><i class="fa fa-pencil fa-fw" aria-hidden="true"></i>수업 게시판</a>
    <a href="#" class="list-group-item"><i class="fa fa-comments fa-fw" aria-hidden="true"></i>질문 게시판</a>
    <a href="#" class="list-group-item"><i class="fa fa-sitemap fa-fw" aria-hidden="true"></i>커리큘럼 게시판</a>
    <a href="#" class="list-group-item"><i class="fa fa-users fa-fw" aria-hidden="true"></i>강의평가 게시판</a>
    <a href="#" class="list-group-item"><i class="fa fa-bar-chart fa-fw" aria-hidden="true"></i>출석률 게시판</a>
  </div>
</div>
	<script>
	// 메뉴 바 모션
	function viewMenu(){
		var $listGroup = $(".list-group");
		var $menuBtn = $(".menuBtn")
		if($listGroup.attr("id")=="menuHidden"){
			$listGroup.attr("id", "menuShow");
			$menuBtn.attr("id", "btnShow");				
		}
		else{
			$listGroup.attr("id", "menuHidden");
			$menuBtn.attr("id", "btnHidden");				
		}
	}
	</script>
</html>
