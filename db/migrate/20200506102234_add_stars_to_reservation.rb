class AddStarsToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :green_stars, :integer
    add_column :reservations, :yellow_stars, :integer
    add_column :reservations, :red_stars, :integer
  end
end
