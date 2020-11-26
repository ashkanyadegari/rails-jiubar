class Catering < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :items
  has_many :reservations
  has_many :reviews, through: :reservations

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
