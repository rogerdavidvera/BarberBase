class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :stylist_service
  belongs_to :block_table
end
