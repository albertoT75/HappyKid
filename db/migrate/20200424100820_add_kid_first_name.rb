class AddKidFirstName < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :first_name, :string
  end
end
