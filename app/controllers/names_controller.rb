class NamesController < ApplicationController
require "call"

  def new
	end

	def create
		given_name = params[:name][:first_name]
		given_name.capitalize!
		name = Name.where(first_name: given_name).pop
	  if name == nil 
	    name_raw = ::Call.new.call_api(given_name)
	    name = Name.new(name_params)
	    name.format_name(given_name, name_raw)
	    name.save!
	  end
    redirect_to name_path(name.id) 
	end


	def show
		@name = Name.find(params[:id])
	end

	def state_data
		ap params
		name = params[:state][:name]
		name.capitalize!
		@state = State.where(name: name).pop
    respond_to do |format|
      format.js
    end 
	end


		private

	  def name_params
	    params.require(:name).permit(:id, :name, :interpretation, :most_common_age, :alive_today, :etymology, :named_per_year)
	  end

end