class User < ApplicationRecord
  has_many :caterings, dependent: :destroy
  has_many :reservations
  validates :open_id, uniqueness: true
end
