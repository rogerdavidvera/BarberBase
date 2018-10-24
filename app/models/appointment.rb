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
end
