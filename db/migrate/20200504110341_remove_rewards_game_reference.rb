class RemoveRewardsGameReference < ActiveRecord::Migration[5.2]
  def change
    remove_reference :rewards, :game, foreign_key: true
  end
end
