# 
@remove_fields = (link) ->
  $(link).prev("input[type=hidden]").val "1"
  $(link).closest(".fields").hide()
  
#
@add_fields = (link, association, content, target) ->
  new_id = new Date().getTime()
  regexp = new RegExp("new_" + association, "g")
  $(target).append content.replace(regexp, new_id)

#   
@update_food_select = (link, group_id, server) ->
  $.ajax
    url:  server
    type: "GET"
    data:
      group_id: group_id
    dataType: "html"
    success: (ajax) ->
      $(link).next("select").empty()
      $(link).next("select").html ajax
