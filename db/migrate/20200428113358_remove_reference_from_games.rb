class RemoveReferenceFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_reference :games, :kid, foreign_key: true
  end
end
