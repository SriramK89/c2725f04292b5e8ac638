class User < ApplicationRecord
  has_secure_password

  validates_uniqueness_of :email

  has_many :favorites
  has_many :favorite_television_shows, through: :favorites, source: :television_show
end
