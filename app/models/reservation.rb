class Reservation < ApplicationRecord
  belongs_to :game
  belongs_to :kid
  has_many :comments
end
