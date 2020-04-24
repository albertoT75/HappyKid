class Game < ApplicationRecord
  belongs_to :kid
  has_many :rewards
end
