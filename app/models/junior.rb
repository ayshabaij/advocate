class Junior < ApplicationRecord
  has_secure_password
  belongs_to :advocate
  validates :email, presence: true, uniqueness: true
end
