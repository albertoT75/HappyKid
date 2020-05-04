class AddPrizeToRewards < ActiveRecord::Migration[5.2]
  def change
    add_column :rewards, :prize, :string
  end
end
