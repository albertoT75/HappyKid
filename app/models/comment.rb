class Comment < ApplicationRecord
  belongs_to :reservation

  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
