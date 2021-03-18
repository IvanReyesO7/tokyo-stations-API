class Station < ApplicationRecord
  has_many :lines
  belongs_to :line
end
