class Kid < ApplicationRecord
  belongs_to :user
  has_many :reservations


  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :hair_color, presence: true
  validates :haircut, presence: true
  validates :eyes_color, presence: true
  validates :up_color, presence: true
  validates :bottom_color, presence: true
end

