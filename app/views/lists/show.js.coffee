$('.posts--group').html("<%= escape_javascript(@lists.each do |list| render partial: 'lists/list', locals: {list: list})%>")
