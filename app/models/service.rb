class Service < ApplicationRecord
  has_many :stylist_services
  has_many :stylists, through: :stylist_services
end
