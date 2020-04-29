class AddCommentsReference < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :reservation, foreign_key: true
  end
end
