class Reservation < ApplicationRecord
  belongs_to :kid
  belongs_to :game
  # has_many :rewards
end
