$('#follow_form_item-' + '<%= @item.id %>').html("<%= escape_javascript(render partial: 'items/unfollow', locals: {item: @item}) %>")
$('#user-follow-count').html("(<%=current_user.items.count%>)")
