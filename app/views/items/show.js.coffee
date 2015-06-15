$('.item-modal').html("<%= escape_javascript(render partial: 'items/item_content', object: @item)%>")

$('.item-modal').removeClass('hide')
$('.overlay').removeClass('hide')