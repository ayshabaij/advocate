class Advocate < ApplicationRecord
  has_secure_password
  has_many :juniors
  validates :email, presence: true, uniqueness: true
end
