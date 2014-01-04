$ ->
	$("#name_name").focus()
	$("#get_name").click (event) ->
		event.preventDefault()
		$("#wrapper").hide()
		$("#ajax_loader").show()

