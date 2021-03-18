class Line < ApplicationRecord
  has_many :stations
  belongs_to :station
end
