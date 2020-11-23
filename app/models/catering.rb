class Catering < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :items
  has_many :reservations
  has_many :reviews, through: :reservations
end
