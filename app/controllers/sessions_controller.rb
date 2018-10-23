class SessionsController < ApplicationController

  def new
    # don't need anything in here, cause we're not setting up a
    # blank model to couple with the form
  end

  def create
    # no strong params cause there is no mass assignment
    @user = Client.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to login_path
    end
  end

  def destroy
    params.inspect
    session.delete(:user_id) # or session[:user_id] = nil
    redirect_to root_path
  end

end
