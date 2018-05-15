class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :address

  has_many :categories
end
