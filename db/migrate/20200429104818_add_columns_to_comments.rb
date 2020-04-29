class AddColumnsToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :content, :text
    add_column :comments, :rating, :integer
  end
end
