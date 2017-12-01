/**
 * 
 */
"use strict";

let path = "/mini2-home";
let dataList;
let containerH = 0;
let writeType = "write";
let modifyId;
let initBln = true;



$(document).ready(function() {
	
	if(user == "") $("#writeButton").remove();
	containerH = $("#titleContainer").height();
	TweenMax.to($("#contentContainer"), .5, { top : containerH })
	TweenMax.to($("#titleContainer"), .5, { left : $("#baseContainer").width() / 2 - 
                                                   $("#titleContainer").width() / 2 })
                                                   
	$("#submitButton").click(function(e){
		
		if($("input[name='title']").val() == "" && $("input[name='site']").val() == "") 
		{
			alert("내용을 입력해 주세요!");
			return;
		}
		
		$.ajax({
			type : "POST",
			url : (writeType == "write") ? "insertSupport.do" : "modifySupport.do",
			data : $("#frm").serialize(),
			dataType : "json",
			success : function(data) {
				callAjax(path+"/supportlink/readSupport.json", null);				
			}
		});			
	})
	

	callAjax(path+"/supportlink/readSupport.json", null);
	setTitleAlign();
	writeButtonControll();
	setBackLayerMouseEvent();
	let x = $(this).width() / 2 - $("#baseContainer").width() / 2;
	let y = $(this).height() / 2 - $("#baseContainer").height() / 2; 
	$("#baseContainer").css({top: y, left: x});
	
	
})

function setTitleAlign()
{	
	//let x = 600 / 2 - $("#titleContainer").width() / 2;
	//TweenMax.to( $("#titleContainer"), 1, { left: x, } );
}

function callAjax(url, param)
{
	if(writeType == "write") $("#contentContainer").empty();
	containerH = $("#titleContainer").height();
	$.ajax({
		url : url,
		data : param,
		dataType : "json",
		success : (data) => 
		{				
			dataList = data;
			
			for(var i = 0; i < dataList.length; i++)
			{
				if(writeType == "write")
				{
					makeList(i, dataList[i].site);
				} else 
				{
					if(modifyId == i)
					{
						$("div#contentContainer"+modifyId+"> a").text("");
						$("div#contentContainer"+modifyId+"> a").removeAttr("href")
						$("div#contentContainer"+modifyId+"> a").text(dataList[i].site);
						$("div#contentContainer"+modifyId+"> a").attr("href", dataList[i].site)
					}
				}
			}
			
			TweenMax.to($("#writePopup"), 1, { top : $(window).height(), ease: Back.easeIn.config(2),
					onComplete: complete});
		}
	})
}


function makeList(i, link)
{
	$("#contentContainer").append("<div id=contentContainer"+i+" class='listBox'></div>")
	
	$("div#contentContainer"+i).append("<a target='_blank' href=" + link + ">" + link + "</a>");
	
	if(user != "")
	{
		$("div#contentContainer"+i).append("<div id=modify" + i + " class='modify' value='aaaaa'>수정</div>")
		   .append("<div id=delete" + i + "  class='delete'>삭제</div>");

		$(".modify").css({ position : "absolute",
		borderRadius: "5px 15px",
		background: "#ffa2a2",
		width : "46px",
		height : "24px",
		left : "499px",
		top : "3px",
		textAlign: "center"});
		
		$(".delete").css({ position : "absolute",
		borderRadius: "5px 15px",
		background: "#f7f798",
		width : "46px",
		height : "24px",
		left : "549px",
		top : "3px",
		textAlign: "center"});
	
	
	
	
		//$(".modify").addClass("listBox") // 미리 준비된 클래스 가져다 쓰기
		
		
		$("#modify" + i).attr("data-id", i);
		$("#modify" + i).click(function(){
			$("#frm").append("<input type='hidden' name='supportNo' value='1'>");
			writeType = "modify";
			modifyId = $(this).data("id")
			setBackLayerControl("block");
			controlinBlackLayer();
			controlPopup();
			
			$("input[name='supportNo']").val(dataList[$(this).data("id")].supportNo);
			$("input[name='title']").val(dataList[$(this).data("id")].title);
			$("input[name='site']").val(dataList[$(this).data("id")].site);
		})
		
		$("#delete" + i).attr("data-id", i);
		$("#delete" + i).click(function(){
			callAjax(path+"/supportlink/deleteSupport.json", {supportNo: dataList[$(this).data("id")].supportNo});
		})
	
	}
	
	var h = $(".listBox").height() + 10;
	containerH += h;
	$("#baseContainer").height(containerH);
	TweenMax.to( $("#contentContainer"+i), 1, { top : (i * h), scaleX : 1, 
                               ease: Elastic.easeOut.config(1, 1), delay : i / 10 });
	
	 
	if(initBln)
	{
		initBln = false;
		$(window).trigger("resize");
	}
}

function controlPopup()
{
	var windowWidth = $( window ).width();
	var windowHeight = $( window ).height();
	
	let x = windowWidth / 2 - $("#writePopup").width() / 2;
	let y = windowHeight / 2 - $("#writePopup").height() / 2;
	
	$("#writePopup").css({top: -500, left: x});
	TweenMax.to($("#writePopup"), 1, { left : x, top : y, ease: Elastic.easeOut.config(1, 1)});
}

function controlinBlackLayer()
{
	var width = $(window).width();
    var height = $(window).height();
     
    //화면을 가리는 레이어의 사이즈 조정
    $(".inBlackLayer").width(width);
    $(".inBlackLayer").height(height);
    $(".inBlackLayer").css("opacity", 0);
    TweenMax.to( $(".inBlackLayer"), 1, { opacity : .7 } );
    
}

function writeButtonControll()
{
	
	$("#writeButton").click(function(){
		writeType = "write";
		setBackLayerControl("block");
		controlinBlackLayer();
		controlPopup();
	})
}

function setBackLayerMouseEvent()
{
	 $(".inBlackLayer").click(function(){
		 TweenMax.to($("#writePopup"), 1, { top : $(window).height(), ease: Back.easeIn.config(2),
			 								onComplete: complete});
    })
}
	 
function complete()
{
	setBackLayerControl("none")
	fieldEmpty();
	$("input").val("")
	$("input[name='supportNo']").remove();
	$(window).trigger("resize");
}

function fieldEmpty()
{
	$("input[name='title']").val("");
	$("input[name='site']").val("");
}

function setBackLayerControl(mode)
{
	$(".backLayer").css("display", mode)
}

$(window).on("resize", function(e){
	let x = $(this).width() / 2 - $("#baseContainer").width() / 2;
	let y = $(this).height() / 2 - (($("#baseContainer").height() + 80) / 2);
	TweenMax.to( $("#baseContainer"), 1, { left: x, top : y } );
	
	var width = $(window).width();
    var height = $(window).height();
     
    //화면을 가리는 레이어의 사이즈 조정
    $(".inBlackLayer").width(width);
    $(".inBlackLayer").height(height);
    
    if($(".backLayer").css("display") != "none") controlPopup();
})









