class Show < ApplicationRecord
  validates_uniqueness_of :name
end
