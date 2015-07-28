$('#follow_form_item-' + '<%=@item.id%>').html("<%= escape_javascript(render partial: 'items/follow', locals: {item: @item}) %>")
$('#user-follow-count').html("(<%= current_user.items.count%>)")