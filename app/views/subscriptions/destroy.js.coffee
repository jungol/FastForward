$('#follow_form_list-' + '<%=@list.id%>').html("<%= escape_javascript(render partial: 'lists/follow', locals: {list: @list}) %>")
$('#user-follow-count').html("(<%= current_user.lists.count%>)")