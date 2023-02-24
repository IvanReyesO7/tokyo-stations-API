class Station < ApplicationRecord
  has_many :platforms

  reverse_geocoded_by :lat, :lon
end
