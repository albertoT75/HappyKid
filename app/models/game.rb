class Game < ApplicationRecord
  include PgSearch::Model
  belongs_to :kid
  has_many :rewards

  pg_search_scope :search_by_name,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true, any_word: true }
    }
end
