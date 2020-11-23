class Reservation < ApplicationRecord
  belongs_to :catering
  belongs_to :user
  has_many :reviews
end
