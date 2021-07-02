class User < ApplicationRecord
  has_many :bookings
  has_many :clowns, through: :bookings

  has_secure_password
  validates :email, presence: true, uniqueness: true

end
