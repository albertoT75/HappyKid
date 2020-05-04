class AddNameToRewards < ActiveRecord::Migration[5.2]
  def change
    add_column :rewards, :name, :string
  end
end
