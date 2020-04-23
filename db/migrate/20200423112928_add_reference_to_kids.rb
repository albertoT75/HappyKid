class AddReferenceToKids < ActiveRecord::Migration[5.2]
  def change
    add_reference :kids, :user, foreign_key: true
  end
end
