# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('.about').click( ->
		$('.view-info').html(
			"The last decade has seen an explosion of economics research in microfinance. This is a great thing, but it also makes it difficult to keep up with all of the literature in the field. This website curates the best microfinance research over a range of topics, everything from the gender dynamics of microfinance to the economics of group lending schemes. The site is still young and evolving, so if you have suggestions, questions, etc, please be in touch (email: ethanbarhydt@gmail.com)."
		)
		$('.about').attr('id', 'info-active')
		$('.contact').removeAttr('id', 'info-active')
	)

	$('.contact').click( ->
		$('.view-info').html("
			Questions or comments? Email ethanbarhydt@gmail.com. Would love to hear from you!"
		)
		$('.contact').attr('id', 'info-active')
		$('.about').removeAttr('id', 'info-active')
	)