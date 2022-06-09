class Offer < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :image
  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
