class Store < ApplicationRecord
  belongs_to :user, optional: true
  has_many :ratings

  validates :name, presence: true, length: { in: 20..60 }
  validates :address, presence: true, length: { maximum: 400 }

  def average_rating
    ratings.average(:rating) || 0
  end
end
