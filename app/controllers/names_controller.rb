class NamesController < ApplicationController
require "call"


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
		if @name.interpretation == nil
			flash[:notice] = "We have no data for that name, please try a different name"
			render :template => "home/new"
		end
	end

	def state_data
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