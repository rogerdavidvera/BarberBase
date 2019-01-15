class StylistService < ApplicationRecord
  belongs_to :stylist
  belongs_to :service
  belongs_to :duration
  has_many :appointments

  def title
    self.service.title
  end

  def title_and_duration
    "#{self.service.title} (#{self.duration.length})"
  end

end
