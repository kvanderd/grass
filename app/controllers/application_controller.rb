class ApplicationController < ActionController::Base
	 # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.  

	protect_from_forgery with: :exception

  def authenticate!
    redirect_to root_path unless current_user
  end

  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

	  helper_method :current_user
    helper :formatting

  private 

    def render_404
      render :template => 'error_pages/404', :layout => false, :status => :not_found
    end

end
