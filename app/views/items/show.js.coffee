$('.item-modal').html("<%= escape_javascript(render('items/item_details'))%>")
$('.item-modal').removeClass('hide')
