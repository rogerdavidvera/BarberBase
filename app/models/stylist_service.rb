class StylistService < ApplicationRecord
  belongs_to :stylist
  belongs_to :service
  belongs_to :duration
end
