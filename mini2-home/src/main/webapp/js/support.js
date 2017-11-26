/**
 * 
 */

var path = "/mini2-home";




$(document).ready(function() {
	callAjax();
	
})

function callAjax()
{
	
	$.ajax({
		url : path+"/supportlink/readSupport.json",
		dataType : "json",
		success : (data) => 
		{
			var members = data; // ECMA 5버젼 이후 방식					
			console.log(data);
		}
	})
}

$(window).on("resize", function(e){
	/*console.log($(this).width())
	console.log($("#listBox").width())*/
	//$("#listBox").top($(this).height() / 2)
	/*$("#baseContainer").offset({top:$(this).height() / 2 - $("#baseContainer").height() / 2, 
								  left : $(this).width() / 2 - $("#baseContainer").width() / 2});*/
	
	var x = $(this).width() / 2 - $("#baseContainer").width() / 2;
	var y = $(this).height() / 2 - $("#baseContainer").height() / 2;
	TweenMax.to( $("#listBox"), 1, { left: x, top : y } );

})









