/**
 * 
 */
"use strict";

var path = "/mini2-home";
let dataList;
let containerH = 0;



$(document).ready(function() {
	containerH = $("#titleContainer").height();
	TweenMax.to($("#contentContainer"), .5, { top : containerH })
	TweenMax.to($("#titleContainer"), .5, { left : $("#baseContainer").width() / 2 - 
                                                   $("#titleContainer").width() / 2 })
	$("#submitButton").click(function(e){
		$.ajax({
			type : "POST",
			url : "insertSupport.do",
			data : $("#frm").serialize(),
			dataType : "json",
			success : function(data) {
				callAjax();
				$("input").val("")
			}
		});			
	})
	callAjax();
	setTitleAlign();
	
})

function setTitleAlign()
{	
	//let x = 600 / 2 - $("#titleContainer").width() / 2;
	//TweenMax.to( $("#titleContainer"), 1, { left: x, } );
}

function callAjax()
{
	
	$.ajax({
		url : path+"/supportlink/readSupport.json",
		dataType : "json",
		success : (data) => 
		{				
			dataList = data;
			for(var i = 0; i < dataList.length; i++)
			{
				makeList(i, dataList[i].site);
			}

		}
	})
}


function makeList(i, link)
{
	$("#contentContainer").append("<div id=contentContainer"+i+" class='listBox'>" + link + "</div>")
	
	$("div#contentContainer"+i).append("<div id=modify" + i + " class='modify' value='aaaaa'>수정</div>")
			   				   .append("<div id=delete" + i + "  class='delete'>삭제</div>");
	
	$(".modify").css({ position : "absolute",
					  borderRadius: "5px 15px",
					  background: "#ffa2a2",
					  width : "46px",
					  height : "24px",
					  left : "499px",
					  top : "3px"});
	
	$(".delete").css({ position : "absolute",
					   borderRadius: "5px 15px",
					   background: "#f7f798",
					   width : "46px",
					   height : "24px",
					   left : "549px",
					   top : "3px"});
	
	//$(".modify").addClass("listBox") // 미리 준비된 클래스 가져다 쓰기
	
	
	$("#modify" + i).attr("data-id", i);
	$("#modify" + i).click(function(){
		console.log($(this).data("id"))
		controlBackLayer();
	})
	
	$("#delete" + i).attr("data-id", i);
	$("#delete" + i).click(function(){
		console.log($(this).data("id"))
	})
	
	
	
	var h = $(".listBox").height() + 10;
	containerH += h;
	$("#baseContainer").height(containerH);
	TweenMax.to( $("#contentContainer"+i), 1, { top : (i * h) } );
	
	if(i == dataList.length - 1) $(window).trigger("resize");
}

function controlBackLayer()
{
	var width = $(window).width();
    var height = $(window).height();
     
    //화면을 가리는 레이어의 사이즈 조정
    $(".backLayer").width(width);
    $(".backLayer").height(height);
    $(".backLayer").fadeTo(500, .7);

   // TweenMax.to( $(".backLayer"), 1, { opacity : 1 } );
}

$(window).on("resize", function(e){
	let x = $(this).width() / 2 - $("#baseContainer").width() / 2;
	let y = $(this).height() / 2 - $("#baseContainer").height() / 2;
	TweenMax.to( $("#baseContainer"), 1, { left: x, top : y } );
	
	var width = $(window).width();
    var height = $(window).height();
     
    //화면을 가리는 레이어의 사이즈 조정
    $(".backLayer").width(width);
    $(".backLayer").height(height);
})









