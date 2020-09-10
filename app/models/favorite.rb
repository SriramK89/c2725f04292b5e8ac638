class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :television_show
end
