class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		respond_to do |format|
			if @user.save
				login @user
				format.html { redirect_to(root_path, :notice => 'User was successfully created.') }
			else
				# @user = User.new
				format.html { render :action => "create" }
			end
		end
	end

	def show
		@user = User.find(params[:id])
	end



	private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end