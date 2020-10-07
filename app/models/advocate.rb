class Advocate < ApplicationRecord
  has_secure_password
  has_many :juniors
  has_many :case_docs
  validates :email, presence: true, uniqueness: true
end
