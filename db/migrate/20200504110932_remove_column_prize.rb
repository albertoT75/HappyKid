class RemoveColumnPrize < ActiveRecord::Migration[5.2]
  def change
    remove_column :rewards, :prize, :string
  end
end
