class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :store

  validates :rating, presence: true, inclusion: { in: 1..5 }
end
