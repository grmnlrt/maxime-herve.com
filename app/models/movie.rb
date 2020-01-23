class Movie < ApplicationRecord
  scope :published, -> { where(published: true) }
  PRIORITY = %w[hight medium low]
  enum priority: PRIORITY
  has_one_attached :photo
  paginates_per 10
end
