$('.posts--group').html("<%= escape_javascript(render partial: 'lists/list', collection: @lists)%>")


