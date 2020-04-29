class Reservation < ApplicationRecord
  belongs_to :kid
  belongs_to :game
end
