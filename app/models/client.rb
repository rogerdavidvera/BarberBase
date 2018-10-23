class Client < ApplicationRecord
  has_secure_password
  # validates :name, presence: true
  # validates :email, presence: true

  # validates :email, uniqueness: true

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, format: { with: VALID_EMAIL_REGEX }

  # validates :phone_number, uniqueness: true

end
