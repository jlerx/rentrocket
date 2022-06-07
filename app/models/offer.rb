class Offer < ApplicationRecord
  belongs_to :user
  has_many :booking, dependent: :destroy
  has_one_attached :image
end
