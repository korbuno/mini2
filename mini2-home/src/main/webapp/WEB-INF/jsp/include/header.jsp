<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	<div class="homeBtn" style="font-size: 25px;">
		<a href="${pageContext.request.contextPath}/main/main.do" style="color: white; text-shadow: 0 0 2px black;">
		<i class="fa fa-home fa-fw" aria-hidden="true"></i>홈으로
		</a>
	</div>
	<div class="col-lg-6">
	    <div class="input-group">
	      <input type="text" class="form-control" placeholder="Search for...">
	      <span class="input-group-btn">
	        <button class="btn btn-default" type="button">
	        <i class="fa fa-search fa-spin" aria-hidden="true"></i>&nbsp;검색</button>
	      </span>
	    </div>
	    <a class="serchDetailBtn" id="serchDetailBtnHidden" href="javascript:viewSerchDetail();" >
  			<img alt="상세 검색" style="color: white; text-shadow: 0 0 2px black;">
  		</a>
	    <div class = "serach-detail" id="serachTypeHidden">
	    	<span>
		 		<label><input type="checkbox" value="">작성자</label>
				<label><input type="checkbox" value="">제목</label>
				<label><input type="checkbox" value="">아이디</label>
	    	</span>
	    </div>
	</div>
	<div class="logform" style="z-index: 3000" >
		<div class="w3-container">
		  <button onclick="document.getElementById('login').style.display='block'" class="w3-button w3-green w3-large">Login</button>
		
		  <div id="login" class="w3-modal">
		    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
		
		      <div class="w3-center"><br>
		        <span onclick="document.getElementById('login').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
		        <img alt="로그인창" style="width:30%" class="w3-circle w3-margin-top">
		      </div>
<!-- 로그인폼 -->		
		      <form class="w3-container" action="/action_page.php">
		        <div class="w3-section">
		          <label><b>아이디</b></label>
		          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="아이디를 입력하세요." name="id" required>
		          <label><b>비밀번호</b></label>
		          <input class="w3-input w3-border" type="password" placeholder="비밀번호를 입력하세요" name="ps" required>
		          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">로그인</button>
		          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">회원가입</button>
		          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> 자동 로그인
		        </div>
		      </form>
		
		      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
		        <button onclick="document.getElementById('login').style.display='none'" type="button" class="w3-button w3-red">취소</button>
		        <span class="w3-right w3-padding w3-hide-small">비밀번호를 <a href="#">잃어버렸습니까?</a></span>
		      </div>
		      
		    </div>
  		</div>
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
	</script>
</body>
</html>