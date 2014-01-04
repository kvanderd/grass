class HomeController < ApplicationController

	def new
		@user = User.new
		@name = Name.new
	end


	def about
	end


end