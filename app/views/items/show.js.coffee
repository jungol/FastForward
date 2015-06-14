$('.modal-man').html("<%= escape_javascript(render partial: 'items/item_content', object: @item)%>")

$('.modal-man').removeClass('hide')
$('.overlay').removeClass('hide')