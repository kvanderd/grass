class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
			if @user.save!
				login(@user)
			end
			redirect_to user_path(@user.id)
	end

	def show
		@user = User.find(params[:id])
		@name = Name.find(@user.name_id)
	end



	private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :name_id)
  end

end