class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user
  # Only for client login account
  def current_user
    if session[:user_id]
      @user = Client.find_by(id: session[:user_id])
    else
    end
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def logged_in?
    !!current_user
  end

end
