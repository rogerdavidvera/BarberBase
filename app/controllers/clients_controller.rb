class ClientsController < ApplicationController
  before_action :authorized
  skip_before_action :authorized, only: [:new, :create] # or whatever onlys we will need

  def show
    if current_user.id == params[:id].to_i
      @client = Client.find_by(id: params[:id])
    else
      # Don't allow user to view other user's profile
      # Just redirect the user to the session[:user_id] AKA current_user.id
      redirect_to client_path(current_user.id)
    end
  end

  def new
    @client = Client.new()
  end

  def create
    @client = Client.new(client_params)
    if @client.valid?
      @client.save
      flash[:new_account] = "Welcome, #{@client.name}. Please sign in."
      redirect_to @client
    else
      raise params.inspect
      redirect_to client_signup_path
    end
  end

  def edit
    if current_user.id == params[:id].to_i
      @client = Client.find_by(id: params[:id])
    else
      # Don't allow user to edit other user's profile
      # Just redirect the user to the session[:user_id] AKA current_user.id, AKA the user's show page.
      redirect_to client_path(current_user.id)
    end
  end

  def update
    @client = Client.find_by(id: params[:id])
    if @client.update(client_params)
      redirect_to client_path
    else
      redirect_to edit_client_path
    end
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :phone_number, :password, :password_confirmation)
  end

end
