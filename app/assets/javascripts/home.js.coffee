$ ->
	$("#name_first_name").focus()
	$("#get_name").click ->
		$("#wrapper").hide()
		$("#ajax_loader").show()

	# $(document).bind("ajaxSend", ->
	#   $("#ajax_loader").show()
	#   $("#wrapper").hide()
	# ).bind "ajaxComplete", ->
	#   $("#ajax_loader").hide()
	#   $("#wrapper").show()
	
	# $("#get_name").click (event) ->
	# 	event.preventDefault()
	# 	$.ajax
	# 		beforeSend: ->
	# 			$("#wrapper").hide()
	# 			$("#ajax_loader").show()

	# 		complete: ->

