class Reward < ApplicationRecord
  default_scope { order(year: :desc) }
end
