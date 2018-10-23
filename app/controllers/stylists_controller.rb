class StylistsController < ActionController::Base

before_action :find_stylist, only: [:show, :edit, :update, :destroy]

  def index
    @stylists = Stylist.all
  end

  def show

  end

  def new
    @stylist = Stylist.new
  end

  def create
    raise params.inspect
    @stylist = Stylist.create(stylist_params)
    if @stylist.valid?
      redirect_to @stylist
    else
      flash[:error] = @stylist.errors.full_messages
      redirect_to new_stylist_path
    end
  end

  def edit

  end

  def update
    @stylist.update(stylist_params)
    if @stylist.valid?
      redirect_to @stylist
    else
      flash[:error] = @stylist.errors.full_messages
      redirect_to edit_stylist_path
    end
  end

  def destroy
    @stylist.destroy
    redirect_to stylists_path
  end

  private

  def stylist_params
    params.require(:stylist).permit(:name, :start_time)
  end

  def find_stylist
    @stylist = Stylist.find(params[:id])
  end

end
