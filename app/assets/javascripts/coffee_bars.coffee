 # Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", -> 
  
	# set average star design
	$('.averages').children().attr("class", "average-star")
	$('.average-star').css({"height":"62","width":"62"})
	$('.average-star').children().css({"font-size":"18px","line-height": "70px"})
	$('.average-star').children().attr("class", "average-p")
	
	# round average values
	for k,v of $('.average-p').contents()
		if typeof v.data is 'string' then v.data = v.data.slice(0,3)
	
	