
var ready;
ready = function(){
	$(".copy").zclip({
	  path: 'js/ZeroClipboard.swf',
	  copy: $(".copy-text").text()
	});
}

  $(document).ready(function() {
    var clip = new ZeroClipboard($("#d_clip_button"))
  });

  $("#clear-test").on("click", function(){
    $("#fe_text").val("Copy me!");
    $("#testarea").val("");
  });