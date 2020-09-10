class Channel < ApplicationRecord
  validates_uniqueness_of :name
end
