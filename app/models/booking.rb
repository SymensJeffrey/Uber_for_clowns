class Booking < ApplicationRecord
  belongs_to :clown
  belongs_to :user


  validates :clown_id, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :price, presence: true
  
end
