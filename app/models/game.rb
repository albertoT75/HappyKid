class Game < ApplicationRecord
  include PgSearch::Model

  has_many :rewards
  has_many :reservations

  pg_search_scope :search_by_name,
    against: [ :name],
    using: {
      tsearch: { prefix: true, any_word: true }
    }
end
