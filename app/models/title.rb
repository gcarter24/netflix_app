class Title < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :release_year, presence: true
  validates :rating, presence: true
  validates :media_type, presence: true
end
