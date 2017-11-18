<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/jsp/include/include.jsp" %>

<body>
	<div class="col-lg-6">
	    <div class="input-group">
	      <input type="text" class="form-control" placeholder="Search for...">
	      <span class="input-group-btn">
	        <button class="btn btn-default" type="button">검색</button>
	      </span>
	    </div>
	    <a class="serchDetailBtn" id="serchDetailBtnHidden" href="javascript:viewSerchDetail();" >
  			<img alt="상세 검색">
  		</a>
	    <div class = "serach-detail dropdown" id="serachTypeHidden">
	    	<span>
	    		<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">전체 게시글
  				<span class="caret"></span></button>
	    		<ul class="dropdown-menu">
				    <li><a href="#" id="1">오늘의 내기</a></li>
				    <li><a href="#" id="2">수업 게시판</a></li>
				    <li><a href="#" id="3">질문 게시판</a></li>
				    <li><a href="#" id="4">커리큘럼 게시판</a></li>
				    <li><a href="#" id="5">강의평가 게시판</a></li>
				    <li><a href="#" id="6">출석률 게시판</a></li>
			 	 </ul>
		 		<label><input type="checkbox" value="">작성자</label>
				<label><input type="checkbox" value="">제목</label>
	    	</span>
	    </div>
	</div>
	<script>
	
	// 검색창 모션
	function viewSerchDetail(){
		var $serachDetail = $(".serach-detail");
		var $serchDetailBtn = $(".serchDetailBtn");
		if($serachDetail.attr("id")=="serachTypeHidden"){
			$serachDetail.attr("id", "serachTypeShow");
			$serchDetailBtn.attr("id", "serachBtnShow");				
		}
		else{
			$serachDetail.attr("id", "serachTypeHidden");
			$serchDetailBtn.attr("id", "serachBtnHidden");				
		}
	}
	
	// 드롭다운 값 > 버튼 값 적용
	var $li_a = $(".dropdown-menu > li > a");	
		for(var i = 0; i < $li_a.length; i++){
			
// 			console.log($li_a[i]);
// 			console.log($li_a[i].text());
// 			$li_a[i].click(function(){
// 				$(".dropdown-toggle").text($li_a[i].text());
// 			});
		}
	</script>
</body>
</html>