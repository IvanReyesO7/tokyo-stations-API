class Line < ApplicationRecord
  has_many :platforms
  has_many :stations, through: :platforms
end
