
$('.recommendation-modal').html("<%= escape_javascript(render('recommendations/new_recommendation_form'))%>")
$('.recommendation-modal').removeClass('hide')
$('.overlay').removeClass('hide')

