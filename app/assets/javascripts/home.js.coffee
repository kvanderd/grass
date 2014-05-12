$ ->
	# $("#name_first_name").focus()
	$("#get_name").click ->
		# name = $.trim($('#name_first_name').val());
		# if name  == '' 
		# 	$("#errors").append("<h2>can't be blank<h2>")
		# else
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

