class AddReferenceToReward < ActiveRecord::Migration[5.2]
  def change
    add_reference :rewards, :game, foreign_key: true
  end
end
