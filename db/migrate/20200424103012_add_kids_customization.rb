class AddKidsCustomization < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :hair_color, :string
    add_column :kids, :haircut, :string
    add_column :kids, :eyes_color, :string
    add_column :kids, :glasses, :boolean
    add_column :kids, :up_color, :string
    add_column :kids, :bottom_color, :string
  end
end
