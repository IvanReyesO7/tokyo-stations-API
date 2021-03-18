class Station < ApplicationRecord
  has_many :lines, through: :platforms
end
