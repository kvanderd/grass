class SessionsController < ApplicationController
  #CREATE THE ABILITY TO LOGIN
  # def new
  #   @user = User.find_by_username(params[:username])
  # end

  # def create
  #   @user = User.find_by_username(params[:username])

  #   if @user && @user.authenticate(params[:password])
  #     login @user
  #     flash[:success] = "Welcome, #{@user.username}!"
  #     redirect_to root_path #action: 'show', id: @user.id
  #   else
  #     flash[:notice] = "An error occured, please try again."
  #     render :new
  #   end
  # end

  def destroy
    session.clear
    redirect_to root_path
  end
end