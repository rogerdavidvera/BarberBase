class Client < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :email, uniqueness: true
  validates :phone_number, uniqueness: true
end
