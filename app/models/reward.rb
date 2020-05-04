class Reward < ApplicationRecord
  belongs_to :user
  validates :first_prize, presence: true
  validates :second_prize, presence: true
  validates :third_prize, presence: true
  validates :fourth_prize, presence: true
  validates :fifth_prize, presence: true
end
