class Call

	def call_api(request)
		result = Wolfram.fetch(request + " given name") 
		Wolfram::HashPresenter.new(result).to_hash
	end

end