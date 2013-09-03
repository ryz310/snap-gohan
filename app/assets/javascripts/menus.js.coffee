# 
remove_fields = (link) ->
  $(link).prev("input[type=hidden]").val "1"
  $(link).closest(".fields").hide()
  
#
add_fields = (link, association, content, target) ->
  new_id = new Date().getTime()
  regexp = new RegExp("new_" + association, "g")
  $(target).append content.replace(regexp, new_id)