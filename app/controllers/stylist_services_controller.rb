class StylistServicesController < ApplicationController
  def index
    @stylists = Stylist.all
  end

  def show

  end

  def new
    @stylist = Stylist.new
  end

  def create
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

  def start_and_end_time_block_ids
    # BlockTable.filter_blocks(9, 15)
    start_id = BlockTable.find_by(start_time_display: @stylist.start_time).id
    end_id = BlockTable.find_by(end_time_display: @stylist.end_time).id

    @first_filtered_table = BlockTable.filter_blocks(start_id - 1, end_id - 1)
    @stylistappts = @stylist.appointments
    @stylistapptsondate = @stylistappts.select {|appt| appt.date == CLIENTDATE)


  end

  def stylist_params
    params.require(:stylist).permit(:name, :start_time)
  end

  def find_stylist
    @stylist = Stylist.find(params[:id])
  end
end
