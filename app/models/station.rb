class Station < ApplicationRecord
  has_many :platforms

  reverse_geocoded_by :lat, :lon
  after_validation :reverse_geocode
end
