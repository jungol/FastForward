$('.right-sidebar').html("<%= escape_javascript(render partial: 'items/item_content', object: @item)%>")