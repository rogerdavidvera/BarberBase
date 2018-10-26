class AppointmentsControllerTest < ApplicationController
  before_action :authorized
  # skip_before_action :authorized, only: [:new, :create] # or whatever onlys we will need

  def new
    # Don't need to have form_for in Stylist show page
    # Maybe just need a form_tag

    # Coming from Barber show page
    if params["stylist_service"]
      stylist_service_id = params["stylist_service"]["stylist_service_id"].to_i
      @appointment = Appointment.new(stylist_service_id: stylist_service_id, client_id: current_user.id)
    elsif flash[:errors]
    # Date not available
    stylist_service_id = flash[:stylist_service_id].to_i
    @appointment = Appointment.new(stylist_service_id: stylist_service_id, client_id: current_user.id)
    elsif flash[:available_times] == []
      flash[:errors] = flash[:unavailable_day]
      stylist_service_id = flash[:stylist_service_id].to_i
      @appointment = Appointment.new(stylist_service_id: stylist_service_id, client_id: current_user.id)
    elsif flash[:date] == nil
      stylist_service_id = flash[:stylist_service_id].to_i
      @appointment = Appointment.new(stylist_service_id: stylist_service_id, client_id: current_user.id)
    else
    # Coming from create page
      stylist_service_id = flash[:stylist_service_id].to_i
      date = DateTime.parse(flash[:date])
      @selected_block_tables = BlockTable.select do |block_table|
        flash[:available_times].include? block_table.id
      end
      @appointment = Appointment.new(stylist_service_id: stylist_service_id, client_id: current_user.id, date: date)
    end
  end

  def create
    @appointment = Appointment.new(appointment_params)
    # if @appointment is not valid
      if @appointment.valid?
        @appointment.save
        redirect_to client_path(current_user.id)
      else
        stylist = @appointment.stylist
        appointment_duration = @appointment.duration
        selected_date = @appointment.date

        weekdaynum = selected_date.wday

        case weekdaynum
        when 0
          ifopen = stylist.sunday
        when 1
          ifopen = stylist.monday
        when 2
          ifopen = stylist.tuesday
        when 3
          ifopen = stylist.wednesday
        when 4
          ifopen = stylist.thursday
        when 5
          ifopen = stylist.friday
        when 6
          ifopen = stylist.saturday
        end

        if ifopen
          # Store Hours of Barber

         # The start time of Barber's availability.
         block_start_id = BlockTable.find_by(start_time_display: stylist.start_time).id
         # The end time of Barber's availability.
         block_end_id = BlockTable.find_by(end_time_display: stylist.end_time).id

         # First, filter BlockTable to eliminate hours before
         # and after, the Barber's start and end times.
         store_hours_filter = BlockTable.filter_blocks(block_start_id, block_end_id)

         # Get all of this stylists' appointments

         stylist_appointments = stylist.appointments

         # Then, select all of the Barber's appointments for that DATE. SPECIFIC DATE!

         selected_date_appointments = stylist_appointments.select do |appointment|
           appointment.date == selected_date
         end

         # Out of these selected_date_appointments, we need to EACH OF THESE APPOINTMENTS:
           # block_table_id
           # duration_id

         # Thought from Shawna:
           # We need
         taken_blocks = []

         selected_date_appointments.each do |appointment|
           start_time = appointment.block_table_id
           duration = appointment.duration.id
           time_array = (start_time...(start_time+duration)).to_a
           taken_blocks.concat(time_array)
         end

         # Now taken_blocks, represent blocks that are no longer available.

         # Now, filter store_hours_filter again
         second_filtered_hours = store_hours_filter.reject {|block| taken_blocks.include? block.id}

         # Now we have filtered block_table,
         # We need an array of numbers remaining.

         # Go through second_filtered_hours, collect ids
         # into an array

         available_block_ids = second_filtered_hours.map do |block|
           block.id
         end

         # Go through first one,
         # if duration is an hour (aka id of 2)
         # we need 19,20 or 20,21, or 21,22 etc.
         # [19, 21, 23, 24, 25]
         # 19 wouldn't work, 21 either, 23-24 is good and 24-25

         # Iterate through available_block_ids
         available_start_times = []

         if !(available_block_ids.empty?)
           available_block_ids.each do |start_time|
             time_block = (start_time...(start_time + appointment_duration.id)).to_a
             time_block_set = Set.new(time_block)
             available_blocks_ids_set = Set.new(available_block_ids)
             if time_block_set.subset? available_blocks_ids_set
               # Add time_block to available_start_times
               available_start_times << start_time
             end
           end
         end

         # Now we have an array of all start times that will allow for
         # the duration of this appointment
         flash[:available_times] = available_start_times

         if flash[:available_times] = []
           flash[:unavailable_day] = day_string = selected_date.strftime("No times available for %A, %b. %-d, %Y.")
         end

         flash[:stylist_service_id] = @appointment.stylist_service_id
         flash[:date] = @appointment.date
         redirect_to new_appointment_path
        else
          name_string = stylist.name
          day_string = selected_date.strftime("%As")
          flash[:errors] = "#{name_string} is not available on #{day_string}."
          flash[:stylist_service_id] = @appointment.stylist_service_id
          redirect_to new_appointment_path
        end
        #
      end
    # Final step is save Appointment to DB
  end

  def destroy
    @appointment = Appointment.find_by(id: params[:id])
    @appointment.destroy
    redirect_to client_path(current_user.id)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:client_id, :block_table_id, :stylist_service_id, :date)
  end

end
