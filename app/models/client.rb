class Client < ApplicationRecord
  has_many :appointments
  has_many :stylist_services, through: :appointments
end
