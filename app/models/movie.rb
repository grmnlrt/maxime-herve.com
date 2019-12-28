class Movie < ApplicationRecord
  has_one_attached :photo
  paginates_per 10
end
