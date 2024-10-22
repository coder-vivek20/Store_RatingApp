class User < ApplicationRecord
  has_secure_password
  
  enum role: { normal_user: 0, store_owner: 1, system_admin: 2 }

  has_many :ratings
  has_many :stores, through: :ratings

  validates :name, presence: true, length: { in: 20..60 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { in: 8..16 }
  validates :address, presence: true, length: { maximum: 400 }
end
