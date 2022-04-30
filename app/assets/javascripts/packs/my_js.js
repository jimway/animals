console.log('loading code11')
$(document).ready(function(){
  var old_val = $("#q").val();
  $("#q").val('')
  $("#q").val(old_val)
  $("#q").focus()
  $("#q").keyup(function(){
    if (old_val !=  $("#q").val()) {
  	  $("#search").submit();
    };
  });
});