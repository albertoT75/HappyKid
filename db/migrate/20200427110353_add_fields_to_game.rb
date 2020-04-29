class AddFieldsToGame < ActiveRecord::Migration[5.2]
  def change

    add_column :games, :name, :string
    add_column :games, :description, :string
    add_column :games, :areas, :string
  end
end
