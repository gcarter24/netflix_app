class Title < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :release_year, presence: true
  validates :rating, presence: true
  validates :media_type, presence: true

  scope :filter_by_name, -> (name) { where('name like ?', "%#{name}%")}
  scope :filter_by_director, -> (director) { where('director like ?', "%#{director}%")}
  scope :filter_by_cast, -> (cast) { where('cast like ?', "%#{cast}%")}
  scope :filter_by_rating, -> (rating) { where('rating like ?', "%#{rating}%")}
  scope :filter_by_year, -> (year) { where('year like ?', "%#{year}%")}
  scope :filter_by_duration, -> (duration) { where('duration like ?', "%#{duration}%")}
  scope :filter_by_country, -> (country) { where('country like ?', "%#{country}%")}
  
end
