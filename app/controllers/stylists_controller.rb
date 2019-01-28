class StylistsController < ApplicationController
  before_action :authorized
  before_action :find_stylist, only: [:show, :edit, :update, :destroy, :start_time_block_id]
  # skip_before_action :authorized, only: [:new, :create] # or whatever onlys we will need

  def index
    @stylists = Stylist.all
  end

  def show
    flash.delete(:errors)
    @appointment = Appointment.new
  end

  private

  def find_stylist
    @stylist = Stylist.find(params[:id])
  end
end
