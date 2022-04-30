console.log('loading code11')
$(document).ready(function(){
  var old_val = $("#q").val();
  $("#q").val('')
  $("#q").val(old_val)
  $("#q").focus()
  $("#q").keyup(function(){
    val = $("#q").val()
    console.log('new_val'+val)
    if (old_val != val && val.length > 2)  {
      $("#search").submit();
    };
  });
});