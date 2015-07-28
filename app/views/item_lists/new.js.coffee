$('#new-item-list-modal').html("<%= escape_javascript(render partial: 'item_lists/new_item_list', locals: {item: @item, lists: @lists}) %>")
