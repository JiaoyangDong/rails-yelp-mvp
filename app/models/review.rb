class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating,
            presence: true,
            numericality: { only_integer: true, in: 0..5 }
end
