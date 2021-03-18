class Line < ApplicationRecord
  has_many :stations, through: :platforms
end
