class DropTables < ActiveRecord::Migration[5.2]
  def change
    remove_reference :rewards, :game, foreign_key: true
    remove_reference :kids, :user, foreign_key: true
    drop_table :games
    drop_table :rewards
    drop_table :kids
  end
end
