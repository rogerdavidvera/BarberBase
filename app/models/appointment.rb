class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :stylist_service
  belongs_to :block_table

  def stylist
    self.stylist_service.stylist
  end

  def duration
    self.stylist_service.duration
  end

  def start_time_display
    self.block_table.start_time_display
  end

  def stylist_name
    self.stylist_service.stylist.name
  end

  def service_title
    self.stylist_service.service.title
  end
end
