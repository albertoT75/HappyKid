class Game < ApplicationRecord
  include PgSearch::Model
  has_many :reservations
  has_many :comments, through: :reservations

  pg_search_scope :search_by_name,
    against: [ :name],
    using: {
      tsearch: { prefix: true, any_word: true }
    }
end


