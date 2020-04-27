class RemoveAreaColumnFromGame < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :areas
  end
end
